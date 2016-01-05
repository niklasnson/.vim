#! /bin/bash
echo
echo "Setting up filestructure..."
echo "========================================================================================================="
echo 
mkdir -pv ~/Projects/active
mkdir -pv ~/Projects/archives
mkdir -pv ~/Projects/docs
mkdir -pv ~/Projects/documentation
mkdir -pv ~/Projects/followed
mkdir -pv ~/Projects/friends 
mkdir -pv ~/Projects/lects
mkdir -pv ~/Projects/misc
mkdir -pv ~/Projects/resources
mkdir -pv ~/Projects/sandbox
mkdir -pv ~/Projects/shared
mkdir -pv ~/Projects/simple
mkdir -pv ~/Projects/tarballs
mkdir -pv ~/Projects/workbench

echo
echo "Cloning some projects I follow"
echo "========================================================================================================="
echo 

cd ~/Projects/followed
git clone git@github.com:rails/rails.git
git clone git@github.com:assemblymade/coderwall.git
git clone git@github.com:rubysherpas/forem.git 
git clone git@github.com:iwasrobbed/Brevidy.git
git clone git@github.com:sharetribe/sharetribe.git
git clone git@github.com:denkGroot/Spina.git
git clone git@github.com:rubygems/rubygems.org.git
git clone git@github.com:hotsh/rstat.us.git
git clone git@github.com:jcs/lobsters.git
git clone git@github.com:gitlabhq/gitlabhq.git
git clone git@github.com:feedbin/feedbin.git

cd ~/Projects/docs/
git clone git@github.com:bbatsov/rails-style-guide.git 

