current_time() { echo `date '+%Y-%m-%d %H:%M:%S'`; }

log() { echo "$(current_time) ${1}"; }

quit_if_returned_error() {
    ret_val=$?
    if [ ${ret_val} -ne 0 ]; then
        log "An error occurred. Quitting."
        exit ${ret_val}
    fi
}
python3 main.py
quit_if_returned_error
