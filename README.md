# Automation_Productivity
 Automation_copy_paste_and_delete_files 



How to Schedule Your Batch Script in Task Scheduler

1.Open Task Scheduler
Press Win + S, type Task Scheduler, and hit Enter.

2.Create a New Task

In the Task Scheduler window, click "Create Task" on the right-hand side.
Give your task a meaningful name, like "Daily File Automation".

3.Set the Trigger (When the task runs)

Go to the Triggers tab and click "New".
Choose "Daily" and set the start date and time.
Click OK to save.

4.Set the Action (What the task does)

Go to the Actions tab and click "New".
For Action, select "Start a Program".
In the Program/script field, browse for your batch file (.bat file).
Click OK to save.

5.Optional Settings

In the Conditions tab, uncheck "Start the task only if the computer is on AC power" if you’re on a laptop and want the task to run even on battery.
In the Settings tab, ensure "Allow task to be run on demand" is checked.

6.Save and Exit
Click OK to save the task.

7.Test the Task

Right-click the task in the Task Scheduler Library and select "Run" to ensure it works correctly.
