    cd /jffs/.koolshare/koolproxy/data/rules
    # 删除旧版本规则文件
    rm -rf koolproxy.txt
    rm -rf daily.txt
    rm -rf kp.dat
    rm -rf user.txt
    # 下载新版本规则文件

    wget -O daily.txt https://raw.githubusercontent.com/user1121114685/koolproxyR/master/koolproxyR/koolproxyR/data/rules/easylistchina.txt
    wget -O koolproxy.txt https://raw.githubusercontent.com/user1121114685/koolproxyR/master/koolproxyR/koolproxyR/data/rules/fanboy-annoyance.txt
    wget -O kp.dat https://raw.githubusercontent.com/user1121114685/koolproxyR/master/koolproxyR/koolproxyR/data/rules/kp.dat
    wget -O user.txt https://raw.githubusercontent.com/user1121114685/koolproxyR/master/koolproxyR/koolproxyR/data/rules/user.txt
    # 下载扩展规则合并
    wget -O user_tmp.txt https://raw.githubusercontent.com/zhangguangjin/kp/master/kpr_video_list.txt
    wget -O daily_tmp.txt https://raw.githubusercontent.com/user1121114685/koolproxyR/master/koolproxyR/koolproxyR/data/rules/yhosts.txt

    cat user_tmp.txt >>user.txt
    cat daily_tmp.txt >>daily.txt

    echo 一点点清洁工作...
    rm -rf user_tmp.txt
    rm -rf daily_tmp.txt
    echo koolproxy规则已替换完成，请重新启用koolproxy!
