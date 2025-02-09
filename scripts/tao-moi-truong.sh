DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
venv_parent=$( realpath $DIR/.. )
venv_name=.venv
venv_path=$venv_parent/$venv_name
[[ ! -d $venv_path ]] && py -m venv $venv_path
. $venv_path/Scripts/activate
py -c "import os, sys; print(os.path.dirname(sys.executable))"

py -m pip install --ignore-installed -r requirements.txt