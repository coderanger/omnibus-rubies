#
# Author:: Noah Kantrowitz <noah@coderanger.net>
#
# Copyright 2013, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name 'ruby-symlinks'
description 'Install symlinks for major Ruby tools'
always_build true

build do
  command "rm -rf #{install_dir}/bin/ruby"
  command "rm -rf #{install_dir}/bin/gem"
  command "ln -s #{install_dir}/embedded/bin/ruby #{install_dir}/bin/ruby"
  command "ln -s #{install_dir}/embedded/bin/gem #{install_dir}/bin/gem"
end
