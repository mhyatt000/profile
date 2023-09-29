
from setuptools import setup, find_packages

setup(
    name='profile',
    version='0.1.0',
    description='zsh profile manager',
    author='Matt Hyatt',
    author_email='your.email@example.com',
    url='https://github.com/mhyatt000/profile',
    packages=find_packages(),
    install_requires=[
        'matplotlib',
    ],
    entry_points={
        'console_scripts': [
            'profile = profile.main:main',
        ],
    },
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',
        'Programming Language :: Python :: 3.9',
    ],
)
