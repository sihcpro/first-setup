python_path=$(which python3.8)
if [ -z "$VIRTUALENVWRAPPER_PYTHON" ]
then
  echo "export VIRTUALENVWRAPPER_PYTHON=$python_path"
  echo "export VIRTUALENVWRAPPER_PYTHON=$python_path" >> ~/.zshrc
  export VIRTUALENVWRAPPER_PYTHON=$python_path
else
  echo "VIRTUALENVWRAPPER_PYTHON=$VIRTUALENVWRAPPER_PYTHON"
fi

if [ -z "$VIRTUALENVWRAPPER_VIRTUALENV" ]
then
  echo "VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv"
  echo "VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv" >> ~/.zshrc
  export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
else
  echo "VIRTUALENVWRAPPER_VIRTUALENV=$VIRTUALENVWRAPPER_VIRTUALENV"
fi

if [ -z "$WORKON_HOME" ]
then
  echo "WORKON_HOME=$HOME/.virtualenvs"
  echo "WORKON_HOME=$HOME/.virtualenvs" >> ~/.zshrc
  export WORKON_HOME=$HOME/.virtualenvs
else
  echo "WORKON_HOME=$WORKON_HOME"
fi

if [ -d "$HOME/Projects" ]
then
  echo "Projects is exists"
else
  echo "Projects is not exists"
  mkdir $HOME/Projects
fi

if [ -z "$PROJECT_HOME" ]
then
  echo "PROJECT_HOME=$HOME/Projects"
  echo "PROJECT_HOME=$HOME/Projects" >> ~/.zshrc
  export PROJECT_HOME=$HOME/Projects
else
  echo "PROJECT_HOME=$WORKON_HOME"
fi

$(pip install virtualenvwrapper)

source /usr/local/bin/virtualenvwrapper.sh
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.zshrc
