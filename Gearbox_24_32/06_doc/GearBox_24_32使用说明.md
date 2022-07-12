# GearBox_24_32 使用说明

## 前言

GearBox变速箱，这里指的是RTL里非整数的位宽转换模块。本模块将24bit的信号（带使能）转换到32bit（带使能）。因为是低位宽转高位宽，可以在同一个时钟域下完成转换，只不过输入与输出的使能占比不同。如果想要输出也是连续的流，可以在后面加一个异步fifo或RAM整流。

## 数据传输结构

数据的输入输出关系如下图所示。

![structure](GearBox_24_32使用说明.assets/structure.png)

## 输入连续时序图

随着数据输入的信号有data_en和data_in_last。data_en代表当前clock数据有效，data_in_last为行结束信号，高电平代表一行的数据传输结束，并且会重置内部计数器，内部计数器的作用为判断当前data_in为输入的哪一个相位。

![line_change](GearBox_24_32使用说明.assets/line_change.png)

正常来讲，每4个输入就会有3个输出，当然data_in_last允许出现在数据比例异常的情况。也就是说最后一组数据只有1/2/3个输入，输出会有1/2/3个（只不过最后一个clock的数据不是占满32bit，不满的时候高位补0。虽然可以设置mask信号来作为byte的使能，但是这无疑增加了模块的复杂性，尤其是考虑数据传输中间的某一个clock出现mask没有全部使能的情况）。具体的输入输出关系可以参考下面的时序图。

下图为data_in_last出现在第1相位：

![last_phase_1](GearBox_24_32使用说明.assets/last_phase_1.png)

下图为data_in_last出现在第2相位：

![last_phase_2](GearBox_24_32使用说明.assets/last_phase_2.png)

下图为data_in_last出现在第3相位：

![last_phase_3](GearBox_24_32使用说明.assets/last_phase_3.png)

## 输入断续的时序图

当然，更进一步的是本模块可以支持输入使能断续的转换，每个相位之间的clock间隔可以不等（比如第一相位和第二相位间隔2个clock，第二相位和第三相位间隔3个clock）。

下图为输入断续下data_in_last出现在第0相位：

![Intermittent_data](GearBox_24_32使用说明.assets/Intermittent_data.png)

断续输入的data_in_last出现在其他相位的时序图就不再赘述，读者可以推断。

