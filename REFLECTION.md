REFLECTION -- Capstone Project

1. Acceleration

What helped me most was fixing errors I just could not understand, and honestly would not have known how to search for either. In Assignment 1, Jupyter kept giving me a "could not find program bash" error. I had no idea why. I typed the code exactly like the tutorial showed. The AI explained that %%bash is a Linux thing and does not work on Windows, and I should use ! instead. That one fix probably saved me an hour of searching forums with the wrong keywords.

In Assignment 5, the R notebook kept crashing with a viewport error every time I tried to make a plot with featurePlot. The error message said something about grid.Call.graphics which meant nothing to me. I tried a couple of workarounds the AI suggested, nothing worked until we replaced featurePlot entirely with ggplot2. That fixed it. The same pattern happened multiple times across all six assignments. I would hit an error I did not recognize, paste it to the AI, and get a working fix in minutes. Without that, I would have been stuck on several assignments for much longer.

The Capstone was where AI helped the absolute most. I needed TCGA melanoma expression data for macrophage-related genes. I knew the data existed somewhere but I had no idea how to get it. The AI wrote a script that downloaded the data from cBioPortal through their API, handled all the JSON parsing, mapped entrez gene IDs to gene names, and saved it as a CSV file. That probably saved me two or three days of trying to read API documentation. When the professor asked me to expand the gene panel and make the dashboard dynamic, the AI helped me redesign the webpage so users can upload their own data and all plots regenerate automatically.

2. Misdirection

AI also caused me a lot of frustration. What annoyed me most was code that looked completely correct but had hidden bugs. You read through it, everything looks fine, you run it, error. You paste the error back, it gives you a fix, you run it again, another error. This loop could take 30 minutes for what should have been a 5-minute fix. Honestly that happened more times than I want to count.

The Assignment 5 featurePlot situation was a good example. The AI wrote code that looked perfectly normal but kept crashing in Jupyter. I went back and forth with it multiple times adding tryCatch and dev.off wrappers. We finally gave up and switched to ggplot2. That whole process probably took longer than just starting with ggplot2 and skipping featurePlot entirely.

The Capstone had several bugs like this that were frustrating because they were hard to see. The AI wrote a .gitignore file where the newlines were literally the characters backslash-n instead of actual line breaks. The file looked fine when you opened it but it did not actually work. I did not notice until I checked git status and saw files that should have been ignored were still being tracked. That wasted maybe 20 minutes debugging something that should have taken 30 seconds.

The dashboard file had another invisible bug. The AI wrote expr_long <- as.numeric(expr_long) instead of expr_long$expression <- as.numeric(...). This turned the whole data frame into a single vector of numbers and destroyed the data structure. The code looked correct if you did not read it very carefully. I did not catch it until I checked the output. Bugs like these are dangerous because you do not know they are there until something downstream breaks.

Something else that got on my nerves was the AI would sometimes say everything was fine when it was not. Multiple times I asked it to check all the files and make sure everything was correct, it said "all good," and then I found an issue myself minutes later. After a few times I stopped trusting the AI's checks and started verifying everything manually. That was a lesson I had to learn the hard way.

3. Workflow Shift

In week 1, I barely knew how to use Git. I could clone a repository and maybe add a file, but that was about it. Commands like branch, merge, pull request, and tag were terms I had heard in class but never actually used. Setting up a conda environment meant following a tutorial step by step and not really understanding what each step did. I definitely could not have set up a project from scratch without detailed instructions.

By the end of this course, I can set up a complete analysis project from nothing. I can create a GitHub repo with the right folder structure and a proper .gitignore. I can write an environment.yml file with the correct package names. I can build a Jupyter notebook or an interactive web dashboard, download real data from an API, process it, make visualizations, and push everything to GitHub with meaningful commit messages.

During the Capstone, I downloaded real TCGA-SKCM expression data from cBioPortal, processed it into a usable format, expanded the M0/M1/M2 macrophage gene panel to 38 well-established markers based on published literature, and built an interactive dashboard with PCA, enrichment boxplots, heatmaps, and a subtype summary. The dashboard allows users to upload their own expression data and regenerates all results automatically. There is no way I could have done any of that in week 1.

The biggest change is probably how I approach problems now. In the beginning, when something broke I would just ask the AI to fix it and hope for the best. I did not have the knowledge to know if the fix was correct or not. By the Capstone, I had learned to check things step by step. When the dashboard would not render, I tested each piece of code separately before putting it all together. When the data looked wrong, I opened the CSV file directly instead of trusting the code. That habit came from getting burned too many times.

4. One Change

From now on, I will always test AI-generated code before trusting it with real data. I learned this lesson across all six assignments, sometimes more than once per assignment. AI can write code that looks perfect but has subtle bugs. Catching those bugs requires actually running the code and checking the output against what you expect.

The most important thing I learned is that AI helps the most when you already know what the correct answer should look like. When you do not know, AI can confidently give you wrong answers that look right, and you have no way to tell the difference. The manual parts of the assignments were valuable for exactly this reason. They gave me the baseline knowledge I needed to catch AI mistakes. Without that baseline I would have submitted code with bugs I did not even know existed.

I will keep using AI as a coding assistant for generating boilerplate code, debugging error messages, and structuring projects. But I will never use it to generate analysis code that I cannot verify independently. Every AI-generated piece of code gets tested on a small example before I trust it with real data. That is probably the most practical habit I am taking away from this course.
