# Helper function to cache dynamically generated completions
# Usage: load_cached_completion <tool_name> <completion_command> <version_command>
function load_cached_completion() {
    local tool=$1
    local completion_cmd=$2
    local version_cmd=$3
    local cache_dir="${ZSH_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/zsh}/completions"
    
    # Do nothing if tool is not installed
    if ! command -v "$tool" >/dev/null 2>&1; then
        return 0
    fi
    
    mkdir -p "$cache_dir"
    
    local cache_file="$cache_dir/$tool.zsh"
    local version_file="$cache_dir/$tool.version"
    local needs_regen=0
    
    if [[ ! -f "$cache_file" || ! -f "$version_file" ]]; then
        needs_regen=1
    else
        # Check if cache is older than 24 hours (m+0 in zsh means modified >= 1 day ago)
        local old_cache=("$cache_file"(Nm+0))
        if [[ ${#old_cache} -gt 0 ]]; then
            # Cache is old, verify tool version
            local current_version
            current_version=$(eval "$version_cmd" 2>/dev/null)
            local cached_version
            read -r cached_version < "$version_file" 2>/dev/null
            
            if [[ "$current_version" != "$cached_version" ]]; then
                needs_regen=1
            else
                # Touch to reset the clock so we don't check version again today
                touch "$cache_file"
            fi
        fi
    fi
    
    if [[ $needs_regen -eq 1 ]]; then
        local tmp_cache="$cache_file.tmp"
        if eval "$completion_cmd" > "$tmp_cache" 2>/dev/null; then
            mv -f "$tmp_cache" "$cache_file"
            eval "$version_cmd" > "$version_file" 2>/dev/null
        else
            rm -f "$tmp_cache"
        fi
    fi
    
    [[ -s "$cache_file" ]] && source "$cache_file"
}
