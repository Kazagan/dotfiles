
get_label() {
    local input=$1
    case $input in
        0)
            echo "$TERMINAL"
            ;;
        1)
            echo "$CSHARP"
            ;;
        2)
            echo "$TEAMS"
            ;;
        3)
            echo "$CHROME"
            ;;
        8)
            echo "$EDGE"
            ;;
        *)
            echo "$input"
            ;;
    esac
}
