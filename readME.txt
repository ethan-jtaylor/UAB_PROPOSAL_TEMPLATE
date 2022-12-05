This is a template folder for writing a proposal at the University of Alabama at Birmingham.

This is based upon the formatting described in the UAB format manual, at the time of this writing this is stored at:
https://www.uab.edu/graduate/images/documents/resources/current_students/FormatManual.pdf

The UABproposalclass.cls file defines all the formatting for this template, and this is auto-imported into the settings file which defines various packages and renewed commands that users may want, which is then imported into the main file which does the full compiling.

bibliography is where you should store all your bibtex entries for citations, and the uabthesis-plain.bst formats the references, but you can feel free to use a different bibliography style if you want.

Images should be stored in the images folder. Sections and other subfiles should be stored in the subfiles folder to be imported into main for final compiling of the document(via the \input).

An example file structure for this template:
main.tex
-settings.tex
--UABproposalclass.cls
-*subfiles folder*
--abstract.tex
--chapter1.tex
--etc...

Hopefully that is as clear as possible on how I recommend structuring and inputting your files.

Let me know of any issues and suggest changes via github.

University of Alabama at Birmingham Proposal class file
Copyright (c) 2022 Ethan Taylor
The latest version of this file may be obtained from
https://github.com/ethan-jtaylor/UAB_PROPOSAL_TEMPLATE

License: LaTeX Project Public License (www.latex-project.org/lppl.txt)
Executive summary:
	This software is copyright but you are granted a license which gives
	you, the "user" of the software, legal permission to copy, distribute,
	and/or modify the software. However, if you modify the software and
	then distribute it (even just locally) you must change the name of the
	software to avoid confusion.
	
OR (dual-licensed)
	
License: GNU Lesser General Public License (www.gnu.org/licenses/lgpl.html)
	
This class file was adapted from the UA class file written by Paul
Kilgo(paulkilgo@gmail.com) which is hosted at https://github.com/OEP/uathesis.
While the final compiled document appears very similar, the actual class
structure has undergone heavy rewrites and adapted to maintain compliance
with the UAB format manual.
	
Author Information:
	Ethan Taylor
	The University of Alabama at Birmingham
	ethan.j.taylor96@gmail.com