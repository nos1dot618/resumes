log() {
    local level="$1"
    local color="$2"
    local message="$3"

    local color_code=""
    case "$color" in
        red) color_code="\033[31m" ;;
        blue) color_code="\033[34m" ;;
        *) color_code="\033[0m" ;;
    esac

    echo -e "[${color_code}${level}\033[0m] $message"
}

error() {
    local message="$1"
    local exit_flag="$2"
    log "ERROR" "red" "$message"
    if [[ "$exit_flag" == "exit" ]]; then
        exit 1
    fi
}

info() {
    local message="$1"
    log "INFO" "blue" "$message"
}