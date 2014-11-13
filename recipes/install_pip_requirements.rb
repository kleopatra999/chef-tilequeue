#
# Cookbook Name:: tilequeue
# Recipe:: install_pip_requirements
#

# generate a pip requirements file for consistent python package
# versions
template node[:tilequeue][:pip_requirements_location] do
  source 'tilequeue-pip-requirements.txt.erb'
end

# install python packages from requirements file
python_pip "-U -r #{node[:tilequeue][:pip_requirements_location]}"
