# Notebook settings to make the GUI's "Download As" PDF export work the same as
# jupyter nbconvert --template=printviewlatex --to=pdf mynotebook.ipynb
#
# THIS MAY BREAK WITH FUTURE nbextensions RELEASES.
import pkg_resources

c = get_config()

# Set the default template
c.LatexExporter.template_file = 'printviewlatex.tplx'

# Recreate nbextensions' settings
c.Exporter.preprocessors = ["jupyter_contrib_nbextensions.nbconvert_support.CodeFoldingPreprocessor",
                            "jupyter_contrib_nbextensions.nbconvert_support.PyMarkdownPreprocessor"]

tpath = pkg_resources.resource_filename("jupyter_contrib_nbextensions", "templates")
c.Exporter.template_path = ['.', tpath]
