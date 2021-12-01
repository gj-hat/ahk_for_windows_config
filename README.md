# autoHotKey for windows

#### 介绍
这是一个windows的键盘脚本 实现了一些常用操作

#### 软件架构
软件使用开源ahk解释器  及 自定义ahk脚本文件


#### 安装教程

1.  打开`AutoHotkey_2.0-beta.3`
2.  按照自己电脑系统安装32/64
3.  安装完成后双击`GlobalHotKey.ahk`即可使用

#### 使用说明

> 说明脚本废除了caps(大小写键)的原有功能,并使用该键加组合键实现其他功能
> 左边为原有按键或者按键说明  右边为新自定义按键

**按键映射:**
1.  vim光标
+ up: caps+k
+ down: caps+j
+ left: caps+h
+ right: caps+l
2.  home and end
+ home: caps+[
+ home: caps+]
3. 左右切换桌面
+ Ctrl+Win+Right: F3
+ Ctrl+Win+Left: F1
4. 前进或者后退(主要应用于浏览器,idea,文件管理器....)
+ go Next: caps+s
+ go Back: caps+a
5.  其他按键
+ alt+f4: caps+q
+ enter: 双击caps
+ delete: caps+d
+ 窗口置顶: ctrl+2
+ 取消窗口置顶: ctrl+alt+2
6. 其他功能:
+ 窗口透明增加: win+`+`
+ 窗口透明减小: win+`-`

7. 鼠标功能(光标放置任务栏):
+ 增大音量: 滚轮向上
+ 减小音量: 滚轮向下

#### 其他自定义

可以参考`AutoHotkey.chm`文件查看ahk教程

#### 参与贡献

JiaGuo
