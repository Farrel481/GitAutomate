<div align="center">

# 🚀 Git Push Commit Automate

*A lightweight and customizable automation program for Git commit & push workflows.*

<p align="center">
  <strong>Automate repetitive Git operations safely, efficiently, and responsibly.</strong>
</p>

---

</div>

## ✨ Features

-  Automate Git commit
-  Automatic Git push
-  Custom commit messages
-  Configurable
-  Press CTRL + C to stop
---

## 📂 Project Structure

```text
.
├── assets/
│   ├── program.ps1
├── .gitignore
├── README.md
└── LICENSE
```

---

## 🚀 Getting Started

### 1. Login to ur Github

```bash
git credential-manager github login
git config --global user.name "Your GitHub Username"
git config --global user.email "your-email@example.com"

```

### 2. Clone your Repo

```bash
git clone your-repo-link
```

### 3. Follow this step

```text
1. Make your gitignore (can copy mine)
2. New file e.g program.ps1
3. Copy the file provided by me and paste to ur ps1 program. 
```

### 4. Run your ps1 program
```bash
powershell -ExecutionPolicy Bypass -File "ps1-program-name.ps1"

```

---

## ⚙️ File Configuration 

Example configuration:

```bash
$Repo = "Your repo file path" (IMPORTANT)
$Branch = "Your working branch name in github. Can be main or others." (IMPORTANT)
$CheckEverySeconds = Each what seconds u want the program to check and push. (OPTIONAL)
$message = "Commit message that appears on ur github"


```

---

## 💡 Example Workflow

```text
Edit Files
     │
     ▼
Detect Changes
     │
     ▼
git add .
     │
     ▼
git commit
     │
     ▼
git push
     │
     ▼
Done ✅
```

---

## 📸 Preview

> Add screenshots or terminal demonstrations here.

---

## 🛡️ Responsible Use

Don't forget you still have to do:

- Project backups
- Personal development workflows
- CI/CD automation
- Scheduled repository synchronization
- Routine maintenance tasks
- To stop program, CTRL + C

It is **not** intended to manipulate contribution graphs or create misleading repository activity. Use with you own risk.

---

## 🤝 Contributing

Contributions are welcome!

1. Fork this repository
2. Create a feature branch
3. Commit your changes
4. Open a Pull Request

---

## 📜 License

This project is licensed under the MIT License.

---

<div align="center">

⭐ Star this repository if you find it useful!

</div>
