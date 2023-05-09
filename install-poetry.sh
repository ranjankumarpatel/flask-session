venv/Scripts/poetry config repositories.pypiserver https://pypiserver.thinktalentws48.click/simple/
venv/Scripts/poetry config http-basic.pypiserver devops 13972684
venv/Scripts/poetry source add --secondary pypiserver https://pypiserver.thinktalentws48.click/simple/
venv/Scripts/poetry config http-basic.pypiserver devops 13972684
venv/Scripts/poetry config --list
venv/Scripts/poetry config virtualenvs.in-project true
#venv/Scripts/poetry run pip install -r requirements.txt

rm -rf build/ dist/ flask_oauthlib.egg-info/
venv/Scripts/poetry install
venv/Scripts/poetry update
venv/Scripts/poetry build
#venv/Scripts/twine upload -r local --username devops --password 13972684 --repository-url https://pypiserver.thinktalentws48.click dist/*