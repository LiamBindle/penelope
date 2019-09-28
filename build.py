#!/usr/bin/env python
import argparse
import datetime
import subprocess

# Parse arguments
parser = argparse.ArgumentParser(description='Build and tag a penelope image.')
parser.add_argument('--base-image', 
                    required=True,
                    type=str,
                    choices=('ubuntu', 'centos'),
                    metavar='BASE_NAME',
                    help='the base image\'s name')
parser.add_argument('--base-tag', 
                    required=True,
                    type=str,
                    metavar='BASE_TAG',
                    help='the base image\'s tag')
parser.add_argument('--repo', 
                    required=False,
                    default='liambindle/penelope',
                    type=str,
                    metavar='REPO_NAME',
                    help='the repo\'s name')
parser.add_argument('--tag', 
                    required=False,
                    nargs=1,
                    type=str,
                    metavar='TAG',
                    help='tag for the built image')
args = parser.parse_args()
tag = '%s-%s%s' % (datetime.datetime.now().strftime('%Y.%m'), args.base_image, args.base_tag) if args.tag is None else args.tag

# Build docker image 
cmd = 'docker build . --build-arg BASE_IMAGE=%s --build-arg BASE_IMAGE_TAG=%s --tag %s:%s' % (args.base_image, args.base_tag, args.repo, tag)
print('+ ' + cmd)
p = subprocess.call(
    cmd.split(),
    shell=False,
    stdin=subprocess.PIPE, 
    stderr=subprocess.STDOUT
)