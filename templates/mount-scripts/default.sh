#!/usr/bin/env bash


__SOURCE__="${BASH_SOURCE[0]}"
while [[ -h "${__SOURCE__}" ]]; do
    __SOURCE__="$(find "${__SOURCE__}" -type l -ls | sed -n 's@^.* -> \(.*\)@\1@p')"
done
__DIR__="$(cd -P "$(dirname "${__SOURCE__}")" && pwd)"
__NAME__="${__SOURCE__##*/}"
__AUTHOR__='S0AndS0'
__DESCRIPTION__='Starts or stops Firejail chroot'


_profile='<<firejail_profile>>'
_chroot='<<firejail_chroot>>'

_args=("${@:?"No arguments provided"}")


__license__(){
    local _date_year="$(date +'%Y')"
    cat <<EOF
${__DESCRIPTION__}
Copyright (C) ${_date_year:-2020} ${__AUTHOR__:-S0AndS0}

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
EOF
}


__usage__() {
    cat <<EOF
${__DESCRIPTION__}


## Augments ${__NAME__%.*} responds to
EOF
}



case "${_args[0]}" in
    stop|down)
        _cmd=('kill')
        _firejail_pids=("$(firejail --list | awk -F : '{
            match = " --profile=" profile " "
            if ($0 ~ match) {
                print $1
            }
        }' profile="${_profile}")")

        ((${#_firejail_pids})) && {
            _cmd+=("${_firejail_pids[@]}")
        } || {
            printf >&2 'No firejail PIDs found for %s\n' "${__NAME__}"
            exit 1
        }
    ;;
    --help|-h|help)
        __usage__
        exit 0
    --license|-l|license)
        __license__
        exit 0
    ;;
    *)
        _firejail_list="$(firejail --list | grep "profile=${_profile}")"

        grep -q "chroot=${_chroot}" <<<"${_firejail_list}" && {
            _name="$(awk '/^name / { print $2; exit }' "${_profile}")"
            _cmd=('firejail' "--join=${_name}")
        } || {
            _cmd=('firejail' "--profile='${_profile}'" "--chroot='${_chroot}'")
        }

        ((${#_args[@]})) && {
            _cmd+=("${_args[@]}")
        }
    ;;
esac


${_cmd[@]}

