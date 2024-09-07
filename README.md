# Django Tkinter
This is the mini project Django and Tkinter with Makefile.

### MacOS / Linux ###
```bash
    # environment
    python3 -m venv venv
    source venv/bin/activate

    # copy .env files
    cp .env.example .env

    # secret key
    python3 -c 'import secrets;print(secrets.token_urlsafe(your number))'

    # Makefile run project
    make help   # He has all her information
```

### Windows ###
```bash
    # environment
    python -m venv venv
    env\Scripts\activate

    # copy .env files
    cp .env.example .env

    # secret key
    python -c 'import secrets;print(secrets.token_urlsafe(your number))'

    # Makefile run project
    make help   # He has all her information
```
