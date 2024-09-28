import os
from sphinx import __version__ as sphinx_version

config = {
    'project': 'My Repository',
    'copyright': '2023, My Name',
    'author': 'My Name',
    'author_email': 'my.name@example.com',
    'version': sphinx_version,
    'release': sphinx_version,
    'language': 'en',
    'master_doc': 'index',
    'source_suffix': ['.rst'],
    'extensions': [
        'sphinx.ext.autodoc',
        'sphinx_autodoc_typehints'
    ],
}
