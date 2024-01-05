SHELL=/bin/bash
MAILTO=""
PATH=/home/ubuntu/miniconda3/bin:/home/ubuntu/miniconda3/condabin:/home/ubuntu/.nvm/versions/node/v18.17.1/bin:/home/ubuntu/.nvm/versions/node/v18.17.1/bin:/home/ubuntu/.vscode-server/bin/1a5daa3a0231a0fbba4f14db7ec463cf99d7768e/bin/remote-cli:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/ubuntu/.local/bin:/home/ubuntu/.nvm/versions/node/v18.17.1/bin:/home/ubuntu/jingxiangyuan



# # 刷新每日任务
37 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main03_refreshtasks.sh

# # 运行浏览器,刷新 cookie (在 23:55 以前运行)
40 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run01guaji.sh
45 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run02guaji.sh
# # 运行浏览器,刷新 cookie (在 23:59 以前运行)
50 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run00lingjiang.sh


# # 挂机
56 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run01guaji.sh
57 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run02guaji.sh

# # 直播管理, 自动直播和关闭 -- 开始直播 和检查直播 -- 关闭直播
40 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh
47 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh
56 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh
30 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh
50 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh
30 01 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh
30 02 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/main04_zhibomaguanli.sh


# 送礼物需要一分钟(至少)
00 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec01_send.sh
# ## 领奖
59 23 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec00_lingjiang.sh
03 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec00_lingjiang.sh
06 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec00_lingjiang.sh
11 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec00_lingjiang.sh
59 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec00_lingjiang.sh

# # PlayWright 补充领奖
15 00 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run00lingjiang.sh
15 01 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/run00lingjiang.sh

## 每日进行一次 git commit
40 06 * * * /home/ubuntu/bibipy/main11_gitcommit.sh
50 06 * * * /home/ubuntu/qiandao/MihoyoBBSTools/mhylogin/gitcommit.sh

## b 站签到
40 02 * * * /home/ubuntu/bibipyc/bibipyc/bashsrcipt/exec_nowith_qiandao.sh


