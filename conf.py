# -*- coding: utf-8 -*-
#
# Semi-Automatic Classification Plugin documentation build configuration file

project = u'Semi-Automatic Classification Plugin'
copyright = u'2012-2023, Luca Congedo'
author = 'Luca Congedo'
version = '8.0'
release = '8.0.9.2'

extensions = ['sphinx.ext.mathjax', 'sphinx.ext.ifconfig']
templates_path = ['_templates']
source_suffix = '.rst'
source_encoding = 'utf-8-sig'
master_doc = 'index'

exclude_patterns = ['_build']
pygments_style = 'sphinx'
locale_dirs = ['locale/']
gettext_compact = False

# -- Options for HTML output ----------------------------------------------

html_theme = 'sphinx_rtd_theme'
html_favicon = "_static/favicon.ico"
html_static_path = ['_static']
html_domain_indices = False
html_use_index = False
html_show_sphinx = False
htmlhelp_basename = 'Semi-AutomaticClassificationPlugin_doc'
html_css_files = ['html_css.css']
html_theme_options = {
    'prev_next_buttons_location': 'both',
}

# -- Options for LaTeX output ---------------------------------------------

latex_elements = {'papersize': 'a4paper'}

latex_documents = [
  ('index', 'Semi-AutomaticClassificationPlugin.tex',
   u'Semi-Automatic Classification Plugin Documentation',
   u'Luca Congedo', 'manual'),
]

latex_logo = '_static/logo.png'

latex_use_parts = True

latex_show_pagerefs = True


# -- Options for manual page output ---------------------------------------

man_pages = [
    ('index', 'semiautomaticclassificationplugin', 
     u'Semi-Automatic Classification Plugin Documentation',
     [u'Luca Congedo'], 1)
]


# -- Options for Texinfo output -------------------------------------------

texinfo_documents = [
  ('index', 'Semi-AutomaticClassificationPlugin', 
   u'Semi-Automatic Classification Plugin Documentation',
   u'Luca Congedo', 'Semi-AutomaticClassificationPlugin', 
   'A plugin for semi-automatic supervised classifications.',
   'GIS and Remote Sensing'),
]
