from argparse import ArgumentParser as AP
import os
import os.path as osp
import subprocess

HOME = os.environ.get("HOME")
ZSH = osp.join(os.environ.get("HOME"),'.zshrc')
BASE = osp.split(osp.dirname(__file__))[-1]
ALIASES = osp.join(BASE,'scripts','aliases')



def run(command):
    result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, shell=True)
    return result.stdout

def install(args):
    """docstring"""

def setup(args):
    """docstring"""

    is_alias = run(f'cat {ZSH} | grep {ALIASES}').strip().split('\n')
    is_alias = any([a==f'source {ALIASES}' for a in is_alias])

    if is_alias:
        pass # save contents of zshrc and then prepend "source ALIASES"
    


def main():
    """docstring"""

    ap = AP()
    sub = ap.add_subparsers()
    ap.set_defaults(func=setup)

    routines = {
        "setup": setup,
        "install": install,
    }

    sap = {}
    for k,v in routines.items():
        sap[k] = sub.add_parser(k)
        sap[k].set_defaults(func=v)
        sap[k].set_defaults(name=k)

    args = ap.parse_args()
    print(f'running {args.name}')
    args.func(args)


if __name__ == "__main__":
    main()

