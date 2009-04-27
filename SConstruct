import os

#### Some configurations.

LATEX_PROJECT = 'CodeQuest'

DEFAULT_TARGET = 'pdf'

#### Initialization

env = Environment(
    tools = ['tex','pdftex'],
    ENV = os.environ
    )

#### The actual builds.

## LaTeX DVI build:
dviOutput = env.DVI(source=LATEX_PROJECT + '.tex', target=LATEX_PROJECT + '.dvi')
env.Alias('dvi', LATEX_PROJECT + '.dvi')

pdfOutput = env.PDF(source=LATEX_PROJECT + '.tex', target=LATEX_PROJECT + '.pdf')
env.Alias('pdf', LATEX_PROJECT + '.pdf')

Default(DEFAULT_TARGET)
