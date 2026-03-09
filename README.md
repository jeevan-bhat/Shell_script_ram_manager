# RAM Usage Monitor (Bash Script)

## 📌 Project Overview

RAM Usage Monitor is a simple **Bash script** that monitors system memory usage and alerts the user when RAM consumption crosses a defined threshold.

This script is useful for **Linux system monitoring, automation, and server health checks**.

---

## ⚙️ Features

* Checks current RAM usage using the `free` command
* Displays RAM usage status
* Generates a warning when RAM usage exceeds the threshold
* Simple and lightweight Bash script
* Can be automated using **cron jobs**

---

## 🛠️ Technologies Used

* **Bash Scripting**
* **Linux Commands**

  * `free`
  * `grep`
  * `awk`

---

## 📂 Script Code

```bash
#!/bin/bash

Ram_manager=$(free -mt | grep "Total" | awk '{print $3}')

if [[ $? == 0 ]]
then
    if [[ $Ram_manager -lt 500 ]]
    then
        echo "Warning! RAM over usage alert"
        echo "Surveillance needed!"
        exit 1
    else
        echo "RAM usage under control!"
        echo "RAM used: $Ram_manager MB"
        exit 0
    fi
else
    echo "Command execution failed!"
    echo "Fatal error"
fi
```

---

## ▶️ How to Run

1. Clone the repository

```
git clone https://github.com/yourusername/ram-monitor-script.git
```

2. Navigate to the folder

```
cd ram-monitor-script
```

3. Give execute permission

```
chmod +x ram_monitor.sh
```

4. Run the script

```
./ram_monitor.sh
```

---

## ⏰ Automating with Cron (Optional)

To run the script every 5 minutes:

```
crontab -e
```

Add:

```
*/5 * * * * /path/to/ram_monitor.sh
```

---

## 📊 Example Output

```
RAM usage under control!
RAM used: 320 MB
```

or

```
Warning! RAM over usage alert
Surveillance needed!
```

---

## 📌 Use Cases

* Server monitoring
* DevOps automation
* Linux system administration practice
* Bash scripting learning projects

---

## 🚀 Future Improvements

* Email alerts when RAM usage is high
* Logging system usage to a file
* Monitoring CPU and disk usage
* Slack/Telegram alert integration

---

## 👨‍💻 Author

**Jeevan Bhat**

GitHub: https://github.com/jeevan-bhat
LinkedIn: https://www.linkedin.com/in/jeevan-bhat-a26260263/

---

⭐ If you like this project, consider giving it a star!
