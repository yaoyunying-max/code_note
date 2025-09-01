# 1. 在linux上安装git工具
```bash
which git
# /usr/bin/git ## git路径
```

# 2. 创建git公钥和密钥
```bash
cd ~
ssh-keygen # 一直回车即可
cat ~/.ssh/id_rsa.pub #获取公钥文件的内容
# 会输出以下内容复制：ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKiFrifbu6vmrwfJY+JUFLLMlT5Fma049UKl2bXjfewd1nF4eKwzVq9Pv1Gy1puUT/RxAG4kBiKXZCJ9jQMnlW88rCvIxjGUR692kav39SV8FZwvt1mJtuwUiIRb1eoomLvG5PEoRvL96XwGQJ5YZt0hitJQCB/3nkKukqebqcKGsiMUFAv6Wx4HLv8P84i8UQFHRkAld8PuwDvc3V+V5il3OwI75cumel/Lg1LIgtytkMhnysT9R9YHiozSndwHd+ob19mubuDnyYvlWj6C0lz/XMhK0YbtgfoUCj+5ljUbiZLB+M2YgUrWkjiBmreMhu0QirRzRGRPQ26yjJIUdX yaoyy@mu01
```

# 3. gitlab添加公钥
```bash
# 进入网址：https://gitlab.com/-/user_settings/ssh_keys/
# 复制输出在屏幕上的内容，然后将此内容复制到gitlab网站上，步骤：我的--->Settings--->SSH Keys--->复制内容--->Add key即可

```

# 4.Git bash更改默认.ssh位置（选择）
```bash
# 创建新的.ssh文件夹
mkdir /gpfs/users/yaoyy/gitlab_new/.ssh
# 复制已有的SSH密钥
cp -R ~/.ssh/* /gpfs/users/yaoyy/gitlab_new/.ssh/
```

# 5.复制仓库的地址到服务器上
```bash
# 首先在git上找到你要clone的分支，然后选择后面的clone，然后选择ssh地址复制
git clone git@gitlab.com:yao_yy/code_note.git
## 会输出以下内容
#Cloning into 'code_note'...
#remote: Enumerating objects: 14, done.
#remote: Counting objects: 100% (14/14), done.
#remote: Compressing objects: 100% (12/12), done.
#remote: Total 14 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
#Receiving objects: 100% (14/14), 5.70 KiB | 0 bytes/s, done.
#Resolving deltas: 100% (1/1), done.
```

# 6.复制服务器上修改的内容到仓库中
```bash
# 从原始仓库地址克隆裸版本库
git clone --bare https://gitlab.com/yao_yy/code_note.git
## 依次输入用户名和密码
# Cloning into bare repository 'code_note.git'...
# Username for 'https://gitlab.com': yao_yy
# Password for 'https://yao_yy@gitlab.com':
# remote: Enumerating objects: 14, done.
# remote: Counting objects: 100% (14/14), done.
# remote: Compressing objects: 100% (12/12), done.
# remote: Total 14 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
# Unpacking objects: 100% (14/14), done.

# 进入克隆下来的目录
cd ./code_note.git

# 6. 以镜像的方式迁移到新的git仓库中
git push --mirror https://gitlab.com/yao_yy/code_note_new.git
# Counting objects: 14, done.
# Delta compression using up to 80 threads.
# Compressing objects: 100% (12/12), done.
# Writing objects: 100% (14/14), 5.68 KiB | 0 bytes/s, done.
# Total 14 (delta 1), reused 0 (delta 0)
# remote:
# remote:
# remote: The private project yao_yy/code_note_new was successfully created.
# remote:
# remote: To configure the remote, run:
# remote:   git remote add origin https://gitlab.com/yao_yy/code_note_new.git
# remote:
# remote: To view the project, visit:
# remote:   https://gitlab.com/yao_yy/code_note_new
# remote:
# remote:
# remote:
# To https://gitlab.com/yao_yy/code_note_new.git
#  * [new branch]      main -> main
```

![alt text](image.png)


# 7.复制别人参考的内容至服务器中
```bash
#使用Fork功能
#Fork 是GitHub提供的一个功能，可以将别人的仓库复制到自己的账户下。操作步骤如下：
#进入目标仓库：打开你想要复制的项目的GitHub页面。
#点击Fork按钮：在页面的右上角找到并点击“Fork”按钮。稍等片刻，GitHub会在你的账户下创建一个一模一样的项目，包括文件、提交历史、issues等。

# 1.克隆到本地：在自己的GitHub页面找到刚刚Fork的项目，点击“Code”按钮，复制HTTPS地址。然后在本地使用以下命令克隆项目：
git clone https://github.com/zywu2002/optDNTRA.git
#创建新分支：为了避免直接在master分支上修改，建议在master分支的基础上创建一个新的分支，例如dev分支：

## 后续的未测试
git checkout -b dev
复制
进行修改并提交：在dev分支上进行修改，完成后提交并推送到自己的GitHub仓库：

git add
git commit -m "修改说明"
git push origin dev

```

# 8.设置账户
```bash
git config --global user.name "yaoyunying-max" 
git config --global user.email "yyy1847916584@163.com" # github 注册的邮箱
# 查看 git 账号信息
git config user.name
git config user.email
# 或者直接使用以下命令就可以看到整个账户信息
git config --list
```
