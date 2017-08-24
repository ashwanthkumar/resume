# Résumé
Attempt at building LaTeX version of my resume inspired from https://github.com/posquit0/Awesome-CV.

You can access my resume online at http://www.ashwanthkumar.in/resume.pdf. 

## Usage
```
$ rm -f resume.pdf
$ xelatex -interaction=nonstopmode resume.tex
$ open resume.pdf
```

## Installing new packages
If you're not set already, configure `tlmgr` to the archived version of the repository
```
tlmgr option repository ftp://tug.org/historic/systems/texlive/2015/tlnet-final
```
Ref - http://tex.stackexchange.com/a/313823

For installing any custom packages
```
tlmgr install packagename
```
Ref - http://tex.stackexchange.com/a/5106

## Note to self
If you're installing new packages, please keep the `packages` file updated. The current list is not complete enough to start from scratch but it's a start.

## For Ubuntu / Debian based systems

### Setup `xelatex`

```
sudo apt-get install -y texlive-xetex xzdec
mkdir ~/texmf
pushd ~/texmf
tlmgr init-usertree
popd
```

### Install the necessary packages

```
cat packages | xargs -I% tlmgr install %
```
