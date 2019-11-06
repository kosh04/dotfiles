#!/usr/bin/env python3

import platform
import random
import subprocess
import sys

sysinfo_commands = [
    {'cmd': ['uname', '-a'], 'system': ['*']},
    {'cmd': ['uname', '-sv'], 'system': ['*']},
    {'cmd': ['cat', '/etc/os-release'], 'system': ['Linux']},
    {'cmd': ['cat', '/etc/lsb-release'], 'system': ['Linux']},
    {'cmd': ['cat', '/etc/os-release'], 'system': ['Linux']},
    {'cmd': ['cat', '/etc/debian_version'], 'system': ['Linux']},
    {'cmd': ['cat', '/etc/issue'], 'system': ['Linux']},
    {'cmd': ['cat', '/etc/issue.net'], 'system': ['Linux']},
    {'cmd': ['cat', '/proc/version'], 'system': ['Linux']},
    {'cmd': ['cat', '/proc/version_signature'], 'system': ['Linux']},
    {'cmd': ['hostnamectl'], 'system': ['Linux']},
    {'cmd': ['lsb_release', '-a'], 'system': ['Linux']},
    {'cmd': ['lscpu'], 'system': ['Linux']},
    {'cmd': ['lshw'], 'system': ['Linux']},
    {'cmd': ['cat', '/proc/version'], 'system': ['Linux', 'FreeBSD']},
    {'cmd': ['sw_vers'], 'system': ['Darwin']},
    {'cmd': ['hostinfo'], 'system': ['Darwin']},
    {'cmd': ['freebsd-version'], 'system': ['FreeBSD']},
]


def main():
    def match(x): return ('*' in x['system']) or (platform.system() in x['system'])
    cmds = list(filter(match, sysinfo_commands))
    cmd = random.choice(cmds)['cmd']
    print('Selected {0}'.format(cmd), file=sys.stderr)
    proc = subprocess.run(cmd)
    return proc.returncode


if __name__ == '__main__':
    sys.exit(main())
