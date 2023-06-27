# NudgeSPM-2_3

### How was your integration experience?

Generally speaking, the integration experience was good. Although I encountered small challenges which I’ll mention at the end of this text, following the document was very easy.

Having code examples helped a lot.

### Did you notice anything erroneous, missing, or unclear in our integration guides?

Not erroneous, but since some developers might read between the lines, some information could be missed. Personally, I felt the title colors could be different.

### Do you have any suggestions for improving the integration process?

There are some details that could be improved from my perspective.

- When mentioning a pod file creation, the document could explain how to do it using “Pod init”
- In one part there is a line that says "If also installing the nudgeGeo library, repeat these steps for: " Since installing nudgeGeo also installs nudgeBase, the GitHub link could be given at the beginning as an option, so that way the user can follow the process with one or the other.
- Integrating other frameworks I’ve noticed that if some configurations need to be done in the `AppDelegate` those are placed above the ones that need to be applied in the `ViewControllers`.
- While importing the package I faced a small issue, `import nudgeGeo` wasn’t working in the `ViewController`. In order to fix it I had to add the package to “Embedded content”. One of the images shows the package already there, but there is no explanation about it and some people may not know what’s happening.
- It might be something related to macOS preview app, but copying the code from the file wasn’t doing it correctly. In fact, some parts of the functions were missing.
- I think this depends on XCode version but in the distribution section “Generic device” is mentioned, while I found “Any iOS device”.
- I didn’t realize it was mandatory to create a `.ipa` to test the framework. Maybe that could be highlighted somehow before “Distributing your nudge-enabled app”.

### Do you have any other feedback for us?

The document is good, very straightforward, and shows concrete examples of what needs to be done. In my opinion, the title colors and distribution could be improved to find sections easier, but I guess that depends on the person.
