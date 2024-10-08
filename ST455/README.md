# Lecture 2022
Course Materials for ST455

To print .ipynb to pdf, follow the instructions here https://stackoverflow.com/questions/34166856/is-there-a-way-to-print-a-jupyter-ipython-notebook-slide-presentation (I attach the answer below for your convenience):

Open your terminal (or Anaconda prompt in windows), try something like this
```
jupyter nbconvert --to slides --post serve /path/to/your/notebook.ipynb
```
This should fire up your browser and serve the presentation e.g. at
```
http://127.0.0.1:8000/<some-title>.slides.html#/
```
change the url to
```
http://127.0.0.1:8000/<some-title>.slides.html?print-pdf
```
If you now open the print dialog from your browser, the slides should have the right formatting. 

Use Chrome to open the slides. IE sometimes does not work.
