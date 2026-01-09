# Attendease

A simple attendance management web application (Flask) for schools: admin, teacher, and student dashboards with student upload, attendance marking, and reporting.

## Table of Contents
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
- [Docker](#docker)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features
- Admin, teacher, and student dashboards
- Add / edit schools, departments, classes, teachers, and students
- Upload students in bulk
- Mark and view attendance
- Generate simple attendance reports

## Tech Stack
- Python (Flask)
- HTML templates (Jinja2) in the `templates/` folder
- SQLite or simple file-based storage (see `database/`)

## Prerequisites
- Python 3.8+
- `pip` available
- (Optional) Docker for containerized runs

## Quick Start
1. Clone the repository

```bash
git clone <your-repo-url>
cd attendease
```

2. Create and activate a virtual environment

```bash
python -m venv .venv
source .venv/bin/activate
```

3. Install dependencies

```bash
pip install -r requirements.txt
```

4. Run the app locally

```bash
python app.py
# or, if using Flask CLI:
export FLASK_APP=app.py
flask run
```

Open http://127.0.0.1:5000 in your browser.

## Docker
Build and run the container (if you prefer Docker):

```bash
docker build -t attendease:latest .
docker run -p 5000:5000 attendease:latest
```

## Project Structure (high level)
- `app.py` — application entrypoint
- `admin.py` — admin helpers / routes
- `requirements.txt` — Python dependencies
- `Dockerfile` — container definition
- `database/` — data files or migrations
- `templates/` — HTML templates used by the app

Notable templates: `login.html`, `admin_dashboard.html`, `teacher_dashboard.html`, `student_dashboard.html`, and pages for adding/editing entities.

## Configuration
- If the app reads environment variables or a config file, set them before running. Check `app.py` for any configurable options (port, DB path, secret keys).

## Contributing
- Fork the repo, create a feature branch, open a pull request with a clear description.
- For bug reports or feature requests, open an issue describing steps to reproduce and expected behavior.

## License
This project is provided without a specified license. Add a `LICENSE` file (for example, MIT) to make reuse and contributions easier.

## Contact
If you want help running or extending this project, open an issue or contact the repository owner.

---

If you'd like, I can:
- add a sample `.env` or config example,
- detect which database engine is used and add explicit setup notes, or
- create a minimal `README` badge and license file.
