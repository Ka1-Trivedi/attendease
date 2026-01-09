# Attendease

A lightweight attendance and Internal Assessment (IA) management web application for schools. Built with Flask, Attendease provides Admin, Teacher, and Student interfaces to manage classes, mark attendance, and run assessments.

---

Table of contents
- Features
- Live demo
- Tech stack
- Prerequisites
- Quick start
- Docker
- Configuration
- Project structure
- Demo/test accounts
- Notes
- Contributing
- License
- Contact

## Features
- Admin panel: manage schools, departments, classes, teachers, and students (CRUD).
- Teacher panel: mark attendance, create/close IAs, export attendance and IA results as CSV.
- Student panel: view attendance and take IAs (single submission before deadline).
- Bulk student upload and CSV export for reports.

## Live demo
Try the public demo: https://attendease-ptgu.onrender.com/ (or the project demo link provided in repository notes).

## Tech stack
- Python 3.8+ with Flask
- Jinja2 templates (in `templates/`)
- Lightweight storage under `database/` (SQLite or similar)

## Prerequisites
- Python 3.8 or newer
- `pip`
- (Optional) Docker

## Quick start (local)
1. Clone the repository and enter the folder:

```bash
git clone <your-repo-url>
cd attendease
```

2. Create and activate a virtual environment:

```bash
python -m venv .venv
source .venv/bin/activate
```

3. Install dependencies:

```bash
pip install -r requirements.txt
```

4. Run the app:

```bash
python app.py
# or
export FLASK_APP=app.py
flask run
```

Open http://127.0.0.1:5000 in your browser.

## Docker
Build and run with Docker:

```bash
docker build -t attendease:latest .
docker run -p 5000:5000 attendease:latest
```

## Configuration
- Check `app.py` and `admin.py` for configuration points (DB path, secret keys, ports).
- If you prefer environment variables, create a `.env` or provide a `config.py` and export variables before running.

## Project structure (high level)
- `app.py` — application entrypoint
- `admin.py` — admin helpers / routes
- `requirements.txt` — Python dependencies
- `Dockerfile` — container definition
- `database/` — storage files or migrations
- `templates/` — Jinja2 templates

Notable templates: `login.html`, `admin_dashboard.html`, `teacher_dashboard.html`, `student_dashboard.html`, and pages for adding/editing entities.

## Demo / test accounts
Use these demo credentials when testing the public demo instance:

Teacher (demo)
- Email: `daatempteacher@gmail.com` or `dbmstempteacher@gmail.com`
- Password: `123`

Students (demo, password `456`)
- CS Div-1: `jessica.mckinney665@gmail.com`
- CS Div-2: `kristi.simon451@gmail.com`
- CS Div-3: `craig.hawkins441@gmail.com`
- BCA Div-1: `bryan.chavez968@gmail.com`
- BCA Div-2: `sarah.baird966@gmail.com`
- BCA Div-3: `jordan.stout435@gmail.com`

## Notes
- Demo site runs on free hosting; the database may reset periodically.
- First visit may take 10–15 seconds while the instance spins up.

## Contributing
- Fork the repo, create a feature branch, and open a pull request with a clear description.
- Open issues for bugs or feature requests with steps to reproduce.
- I can add a `CONTRIBUTING.md` and `.env.example` if you'd like.

## License
No license file is included by default. Add a `LICENSE` (for example MIT) to enable easier reuse and contributions.

## Contact
Authors: Kavan Trivedi and Hit Sheth
For help or feedback, open an issue in this repository.

---


