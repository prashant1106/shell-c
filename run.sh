set -e 

(
  cd "$(dirname "$0")" 
  gcc app/*.c -o /tmp/shell-target
)

exec /tmp/shell-target "$@"