# shellcheck source=../git/core.bash # @root
# shellcheck source=../utils/os.bash # @os @arch

_BINPATH="$(@root)/bin/$(@os)/$(@arch)"
if [[ ":${PATH}:" != *":${_BINPATH}:"* ]]; then
  export PATH="${_BINPATH}:${PATH}"
fi
[ -d "${_BINPATH}" ] || mkdir -p "${_BINPATH}"

@install() {
  local script=${1} path=${2:-${_BINPATH}}
  path=${path/'{os}'/$(@os)}
  path=${path/'{arch}'/$(@arch)}
  ${script} "${path}"
}
