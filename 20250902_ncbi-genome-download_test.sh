source /coldata/yanjiuyuan/yaoyy/New_home/.bashrc

pip install ncbi-genome-download

pip install --target=/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/pkgs/ ncbi-genome-download


## 
conda info ## 查看conda环境信息

#active environment : base
    active env location : /home/yaoyy/miniconda3
            shell level : 2
       user config file : /home/yaoyy/.condarc
 populated config files : /home/yaoyy/.condarc
          conda version : 23.11.0
    conda-build version : not installed
         python version : 3.8.18.final.0
                 solver : libmamba (default)
       virtual packages : __archspec=1=skylake_avx512
                          __conda=23.11.0=0
                          __glibc=2.17=0
                          __linux=3.10.0=0
                          __unix=0=0
       base environment : /home/yaoyy/miniconda3  (writable)
      conda av data dir : /home/yaoyy/miniconda3/etc/conda
  conda av metadata url : None
           channel URLs : https://repo.anaconda.cloud/t/<TOKEN>/msys2/linux-64
                          https://repo.anaconda.cloud/t/<TOKEN>/msys2/noarch
                          https://repo.anaconda.cloud/t/<TOKEN>/r/linux-64
                          https://repo.anaconda.cloud/t/<TOKEN>/r/noarch
                          https://repo.anaconda.cloud/t/<TOKEN>/main/linux-64
                          https://repo.anaconda.cloud/t/<TOKEN>/main/noarch
                          https://repo.anaconda.com/pkgs/main/linux-64
                          https://repo.anaconda.com/pkgs/main/noarch
                          https://repo.anaconda.com/pkgs/r/linux-64
                          https://repo.anaconda.com/pkgs/r/noarch
          package cache : /coldata/yanjiuyuan/yaoyy/New_home/miniconda3/pkgs
       envs directories : /coldata/yanjiuyuan/yaoyy/New_home/miniconda3/envs
                          /home/yaoyy/miniconda3/envs
                          /home/yaoyy/.conda/envs
               platform : linux-64
             user-agent : conda/23.11.0 requests/2.31.0 CPython/3.8.18 Linux/3.10.0-862.el7.x86_64 centos/7.5.1804 glibc/2.17 solver/libmamba conda-libmamba-solver/23.11.1 libmambapy/1.5.3
                UID:GID : 32057:42023
             netrc file : None
#           offline mode : False


## 修改pip安装的软件默认位置
python -m site --help
## 找到site.py文件的路径
/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8/site.py [--user-base] [--user-site]
Without arguments print some useful information
With arguments print the value of USER_BASE and/or USER_SITE separated
by ':'.

Exit codes with --user-base or --user-site:
  0 - user site directory is enabled
  1 - user site directory is disabled by user
  2 - uses site directory is disabled by super user
      or for security reasons
 >2 - unknown error

## 编辑 site.py 文件：使用文本编辑器（如 Vim、Nano 或 VSCode）打开该文件，找到 USER_SITE 和 USER_BASE 设置行。
## 修改路径：将它们从 None 修改为你想要的绝对路径（注意：Windows 系统使用双反斜杠 \\ 或正斜杠 /）

# for distutils.commands.install
# These values are initialized by the getuserbase() and getusersitepackages()
# functions, through the main() function when Python starts.
USER_SITE = "/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8/site-packages/"
USER_BASE = "/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8"

## 验证修改：保存文件后，运行以下命令检查修改是否生效：
bash
python -m site
python -m site
sys.path = [
    '/home/yaoyy',
    '/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python38.zip',
    '/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8',
    '/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8/lib-dynload',
    '/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8/site-packages',
]
USER_BASE: '/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8' (exists)
USER_SITE: '/coldata/yanjiuyuan/yaoyy/New_home/miniconda3/lib/python3.8/site-packages/' (exists)
ENABLE_USER_SITE: True
