# Variables
PYTHON=python
DJANGO_MANAGE=python manage.py
PIP=pip
SERVER=127.0.0.1:8000

# Commands
install:
	$(PIP) install -r requirements.txt

runserver:
	$(DJANGO_MANAGE) runserver $(SERVER)

tkinter:
	$(PYTHON) gui/main.py

run: runserver tkinter

migrate:
	$(DJANGO_MANAGE) migrate

createsuperuser:
	$(DJANGO_MANAGE) createsuperuser

clean:
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete

# Help
help:
	@echo "Available commands:"
	@echo "  install         Install dependencies"
	@echo "  runserver       Run Django development server"
	@echo "  tkinter         Launch Tkinter GUI"
	@echo "  run             Run both Django server and Tkinter"
	@echo "  migrate         Apply Django migrations"
	@echo "  createsuperuser Create Django superuser"
	@echo "  clean           Clean up Python cache files"
