#!/usr/bin/env python
# -*- coding: utf-8 -*-

#    Extended Selenium2 Library - a web testing library with AngularJS support.
#    Copyright (c) 2015, 2016 Richard Huang <rickypc@users.noreply.github.com>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

"""
Extended Selenium2 Library - a web testing library with AngularJS support.
"""

# To use a consistent encoding
import codecs
from os.path import abspath, dirname, join
# Always prefer setuptools over distutils
from setuptools import setup, find_packages

LIBRARY_NAME = 'ExtendedSeleniumLibrary'
CWD = abspath(dirname(__file__))
VERSION_PATH = join(CWD, 'src', LIBRARY_NAME, 'version.py')
exec(compile(open(VERSION_PATH).read(), VERSION_PATH, 'exec'))

with codecs.open(join(CWD, 'README.rst'), encoding='utf-8') as reader:
    LONG_DESCRIPTION = reader.read()

setup(
    name='robotframework-%s' % LIBRARY_NAME.lower(),
    version=VERSION,  # pylint: disable=undefined-variable  # noqa
    description='Extended Selenium web testing library for Robot Framework '
                'with AngularJS support',
    long_description=LONG_DESCRIPTION,
    url='https://github.com/WandyYing/robotframework-%s' % LIBRARY_NAME.lower(),
    author='Richard Huang' 'Wandy Ying',
    author_email='wandy1208@gmail.com',
    license='AGPL 3',
    classifiers=[
        'Development Status :: 4 - Beta',
        'Framework :: Robot Framework',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: GNU Affero General Public License v3',
        'Programming Language :: Python :: 2.7 3.4+',
        'Topic :: Software Development :: Testing',
    ],
    keywords='robot framework extended testing automation selenium selenium webdriver web '
             'protractor angular angularjs angular.js javascript karma webdev softwaretesting',
    platforms='any',
    packages=find_packages('src'),
    package_dir={'': 'src'},
    install_requires=['selenium >= 3.6', 'robotframework-seleniumlibrary == 3.0.0rc1']
)
