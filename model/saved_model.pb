╪з

▌м
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758╣Я
Ж
my_model_1/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*(
shared_namemy_model_1/dense_9/bias

+my_model_1/dense_9/bias/Read/ReadVariableOpReadVariableOpmy_model_1/dense_9/bias*
_output_shapes
:'*
dtype0
П
my_model_1/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А'**
shared_namemy_model_1/dense_9/kernel
И
-my_model_1/dense_9/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/dense_9/kernel*
_output_shapes
:	А'*
dtype0
З
my_model_1/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_namemy_model_1/dense_8/bias
А
+my_model_1/dense_8/bias/Read/ReadVariableOpReadVariableOpmy_model_1/dense_8/bias*
_output_shapes	
:А*
dtype0
Р
my_model_1/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АbА**
shared_namemy_model_1/dense_8/kernel
Й
-my_model_1/dense_8/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/dense_8/kernel* 
_output_shapes
:
АbА*
dtype0
М
my_model_1/conv2d_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namemy_model_1/conv2d_101/bias
Е
.my_model_1/conv2d_101/bias/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_101/bias*
_output_shapes
:@*
dtype0
Ь
my_model_1/conv2d_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*-
shared_namemy_model_1/conv2d_101/kernel
Х
0my_model_1/conv2d_101/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_101/kernel*&
_output_shapes
:@@*
dtype0
М
my_model_1/conv2d_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namemy_model_1/conv2d_100/bias
Е
.my_model_1/conv2d_100/bias/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_100/bias*
_output_shapes
:@*
dtype0
Ь
my_model_1/conv2d_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*-
shared_namemy_model_1/conv2d_100/kernel
Х
0my_model_1/conv2d_100/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_100/kernel*&
_output_shapes
:@@*
dtype0
К
my_model_1/conv2d_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namemy_model_1/conv2d_99/bias
Г
-my_model_1/conv2d_99/bias/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_99/bias*
_output_shapes
:@*
dtype0
Ъ
my_model_1/conv2d_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_namemy_model_1/conv2d_99/kernel
У
/my_model_1/conv2d_99/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_99/kernel*&
_output_shapes
: @*
dtype0
К
my_model_1/conv2d_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namemy_model_1/conv2d_98/bias
Г
-my_model_1/conv2d_98/bias/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_98/bias*
_output_shapes
: *
dtype0
Ъ
my_model_1/conv2d_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namemy_model_1/conv2d_98/kernel
У
/my_model_1/conv2d_98/kernel/Read/ReadVariableOpReadVariableOpmy_model_1/conv2d_98/kernel*&
_output_shapes
: *
dtype0
О
serving_default_input_1Placeholder*1
_output_shapes
:         рр*
dtype0*&
shape:         рр
Ы
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1my_model_1/conv2d_98/kernelmy_model_1/conv2d_98/biasmy_model_1/conv2d_99/kernelmy_model_1/conv2d_99/biasmy_model_1/conv2d_100/kernelmy_model_1/conv2d_100/biasmy_model_1/conv2d_101/kernelmy_model_1/conv2d_101/biasmy_model_1/dense_8/kernelmy_model_1/dense_8/biasmy_model_1/dense_9/kernelmy_model_1/dense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *-
f(R&
$__inference_signature_wrapper_133448

NoOpNoOp
╒=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Р=
valueЖ=BГ= B№<
▓
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2
	
conv3
	conv4
pooling
drop
	drop1
flatten
d3
dense_output

signatures*
Z
0
1
2
3
4
5
6
7
8
9
10
11*
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 
░
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
$trace_0
%trace_1
&trace_2
'trace_3* 
6
(trace_0
)trace_1
*trace_2
+trace_3* 
* 
╚
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias
 2_jit_compiled_convolution_op*
╚
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias
 9_jit_compiled_convolution_op*
╚
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

kernel
bias
 @_jit_compiled_convolution_op*
╚
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
 G_jit_compiled_convolution_op*
О
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 
е
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator* 
е
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses
[_random_generator* 
О
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
ж
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

kernel
bias*
ж
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

kernel
bias*

nserving_default* 
[U
VARIABLE_VALUEmy_model_1/conv2d_98/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEmy_model_1/conv2d_98/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEmy_model_1/conv2d_99/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEmy_model_1/conv2d_99/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEmy_model_1/conv2d_100/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmy_model_1/conv2d_100/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEmy_model_1/conv2d_101/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmy_model_1/conv2d_101/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEmy_model_1/dense_8/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEmy_model_1/dense_8/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmy_model_1/dense_9/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEmy_model_1/dense_9/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
	1

2
3
4
5
6
7
8
9*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
У
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
* 

0
1*

0
1*
* 
У
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
* 

0
1*

0
1*
* 
Х
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

Вtrace_0* 

Гtrace_0* 
* 

0
1*

0
1*
* 
Ш
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

Йtrace_0* 

Кtrace_0* 
* 
* 
* 
* 
Ц
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

Рtrace_0* 

Сtrace_0* 
* 
* 
* 
Ц
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

Чtrace_0
Шtrace_1* 

Щtrace_0
Ъtrace_1* 
* 
* 
* 
* 
Ц
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

аtrace_0
бtrace_1* 

вtrace_0
гtrace_1* 
* 
* 
* 
* 
Ц
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

йtrace_0* 

кtrace_0* 

0
1*

0
1*
* 
Ш
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

░trace_0* 

▒trace_0* 

0
1*

0
1*
* 
Ш
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

╖trace_0* 

╕trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemy_model_1/conv2d_98/kernelmy_model_1/conv2d_98/biasmy_model_1/conv2d_99/kernelmy_model_1/conv2d_99/biasmy_model_1/conv2d_100/kernelmy_model_1/conv2d_100/biasmy_model_1/conv2d_101/kernelmy_model_1/conv2d_101/biasmy_model_1/dense_8/kernelmy_model_1/dense_8/biasmy_model_1/dense_9/kernelmy_model_1/dense_9/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *(
f#R!
__inference__traced_save_133918
є
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemy_model_1/conv2d_98/kernelmy_model_1/conv2d_98/biasmy_model_1/conv2d_99/kernelmy_model_1/conv2d_99/biasmy_model_1/conv2d_100/kernelmy_model_1/conv2d_100/biasmy_model_1/conv2d_101/kernelmy_model_1/conv2d_101/biasmy_model_1/dense_8/kernelmy_model_1/dense_8/biasmy_model_1/dense_9/kernelmy_model_1/dense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *+
f&R$
"__inference__traced_restore_133964▄╡
╟
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_133783

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АbY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Аb"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
а

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_133059

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_133745

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
и
F
*__inference_dropout_4_layer_call_fn_133755

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_133122a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_133772

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Д
■
E__inference_conv2d_99_layer_call_and_return_conditional_losses_133668

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         pp@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         pp@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp 
 
_user_specified_nameinputs
ё
Я
*__inference_conv2d_99_layer_call_fn_133657

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_132965w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         pp@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp 
 
_user_specified_nameinputs
╦Q
╪	
F__inference_my_model_1_layer_call_and_return_conditional_losses_133574
xB
(conv2d_98_conv2d_readvariableop_resource: 7
)conv2d_98_biasadd_readvariableop_resource: B
(conv2d_99_conv2d_readvariableop_resource: @7
)conv2d_99_biasadd_readvariableop_resource:@C
)conv2d_100_conv2d_readvariableop_resource:@@8
*conv2d_100_biasadd_readvariableop_resource:@C
)conv2d_101_conv2d_readvariableop_resource:@@8
*conv2d_101_biasadd_readvariableop_resource:@:
&dense_8_matmul_readvariableop_resource:
АbА6
'dense_8_biasadd_readvariableop_resource:	А9
&dense_9_matmul_readvariableop_resource:	А'5
'dense_9_biasadd_readvariableop_resource:'
identityИв!conv2d_100/BiasAdd/ReadVariableOpв conv2d_100/Conv2D/ReadVariableOpв!conv2d_101/BiasAdd/ReadVariableOpв conv2d_101/Conv2D/ReadVariableOpв conv2d_98/BiasAdd/ReadVariableOpвconv2d_98/Conv2D/ReadVariableOpв conv2d_99/BiasAdd/ReadVariableOpвconv2d_99/Conv2D/ReadVariableOpвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpР
conv2d_98/Conv2D/ReadVariableOpReadVariableOp(conv2d_98_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0к
conv2d_98/Conv2DConv2Dx'conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр *
paddingSAME*
strides
Ж
 conv2d_98/BiasAdd/ReadVariableOpReadVariableOp)conv2d_98_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_98/BiasAddBiasAddconv2d_98/Conv2D:output:0(conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр n
conv2d_98/ReluReluconv2d_98/BiasAdd:output:0*
T0*1
_output_shapes
:         рр н
max_pooling2d_5/MaxPoolMaxPoolconv2d_98/Relu:activations:0*/
_output_shapes
:         pp *
ksize
*
paddingVALID*
strides
Р
conv2d_99/Conv2D/ReadVariableOpReadVariableOp(conv2d_99_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╟
conv2d_99/Conv2DConv2D max_pooling2d_5/MaxPool:output:0'conv2d_99/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
Ж
 conv2d_99/BiasAdd/ReadVariableOpReadVariableOp)conv2d_99_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_99/BiasAddBiasAddconv2d_99/Conv2D:output:0(conv2d_99/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@l
conv2d_99/ReluReluconv2d_99/BiasAdd:output:0*
T0*/
_output_shapes
:         pp@п
max_pooling2d_5/MaxPool_1MaxPoolconv2d_99/Relu:activations:0*/
_output_shapes
:         88@*
ksize
*
paddingVALID*
strides
Т
 conv2d_100/Conv2D/ReadVariableOpReadVariableOp)conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╦
conv2d_100/Conv2DConv2D"max_pooling2d_5/MaxPool_1:output:0(conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@*
paddingSAME*
strides
И
!conv2d_100/BiasAdd/ReadVariableOpReadVariableOp*conv2d_100_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
conv2d_100/BiasAddBiasAddconv2d_100/Conv2D:output:0)conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@n
conv2d_100/ReluReluconv2d_100/BiasAdd:output:0*
T0*/
_output_shapes
:         88@░
max_pooling2d_5/MaxPool_2MaxPoolconv2d_100/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Т
 conv2d_101/Conv2D/ReadVariableOpReadVariableOp)conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╦
conv2d_101/Conv2DConv2D"max_pooling2d_5/MaxPool_2:output:0(conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
И
!conv2d_101/BiasAdd/ReadVariableOpReadVariableOp*conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
conv2d_101/BiasAddBiasAddconv2d_101/Conv2D:output:0)conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @n
conv2d_101/ReluReluconv2d_101/BiasAdd:output:0*
T0*/
_output_shapes
:         @░
max_pooling2d_5/MaxPool_3MaxPoolconv2d_101/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ь
dropout_3/dropout/MulMul"max_pooling2d_5/MaxPool_3:output:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:         @w
dropout_3/dropout/ShapeShape"max_pooling2d_5/MaxPool_3:output:0*
T0*
_output_shapes
::э╧и
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╠
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*/
_output_shapes
:         @`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  О
flatten_3/ReshapeReshape#dropout_3/dropout/SelectV2:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         АbЖ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype0О
dense_8/MatMulMatMulflatten_3/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:         А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Н
dropout_4/dropout/MulMuldense_8/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:         Аo
dropout_4/dropout/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
::э╧б
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?┼
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*(
_output_shapes
:         АЕ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	А'*
dtype0Ц
dense_9/MatMulMatMul#dropout_4/dropout/SelectV2:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'В
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype0О
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         'h
IdentityIdentitydense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         'р
NoOpNoOp"^conv2d_100/BiasAdd/ReadVariableOp!^conv2d_100/Conv2D/ReadVariableOp"^conv2d_101/BiasAdd/ReadVariableOp!^conv2d_101/Conv2D/ReadVariableOp!^conv2d_98/BiasAdd/ReadVariableOp ^conv2d_98/Conv2D/ReadVariableOp!^conv2d_99/BiasAdd/ReadVariableOp ^conv2d_99/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2F
!conv2d_100/BiasAdd/ReadVariableOp!conv2d_100/BiasAdd/ReadVariableOp2D
 conv2d_100/Conv2D/ReadVariableOp conv2d_100/Conv2D/ReadVariableOp2F
!conv2d_101/BiasAdd/ReadVariableOp!conv2d_101/BiasAdd/ReadVariableOp2D
 conv2d_101/Conv2D/ReadVariableOp conv2d_101/Conv2D/ReadVariableOp2D
 conv2d_98/BiasAdd/ReadVariableOp conv2d_98/BiasAdd/ReadVariableOp2B
conv2d_98/Conv2D/ReadVariableOpconv2d_98/Conv2D/ReadVariableOp2D
 conv2d_99/BiasAdd/ReadVariableOp conv2d_99/BiasAdd/ReadVariableOp2B
conv2d_99/Conv2D/ReadVariableOpconv2d_99/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:T P
1
_output_shapes
:         рр

_user_specified_namex
Ъ
╞
+__inference_my_model_1_layer_call_fn_133477
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
АbА
	unknown_8:	А
	unknown_9:	А'

unknown_10:'
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_my_model_1_layer_call_and_return_conditional_losses_133174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         '`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:         рр

_user_specified_namex
∙
Я
*__inference_conv2d_98_layer_call_fn_133637

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_132947y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         рр `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
ц8
╝
F__inference_my_model_1_layer_call_and_return_conditional_losses_133079
input_1*
conv2d_98_132948: 
conv2d_98_132950: *
conv2d_99_132966: @
conv2d_99_132968:@+
conv2d_100_132984:@@
conv2d_100_132986:@+
conv2d_101_133002:@@
conv2d_101_133004:@"
dense_8_133042:
АbА
dense_8_133044:	А!
dense_9_133073:	А'
dense_9_133075:'
identityИв"conv2d_100/StatefulPartitionedCallв"conv2d_101/StatefulPartitionedCallв!conv2d_98/StatefulPartitionedCallв!conv2d_99/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCallД
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_98_132948conv2d_98_132950*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_132947ў
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926г
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_99_132966conv2d_99_132968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_132965∙
!max_pooling2d_5/PartitionedCall_1PartitionedCall*conv2d_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_100/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_1:output:0conv2d_100_132984conv2d_100_132986*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_100_layer_call_and_return_conditional_losses_132983·
!max_pooling2d_5/PartitionedCall_2PartitionedCall+conv2d_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_101/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_2:output:0conv2d_101_133002conv2d_101_133004*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133001·
!max_pooling2d_5/PartitionedCall_3PartitionedCall+conv2d_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926√
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_3:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_133020ф
flatten_3/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_133028О
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_8_133042dense_8_133044*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_133041Ц
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_133059Х
dense_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_9_133073dense_9_133075*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_133072w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         'ф
NoOpNoOp#^conv2d_100/StatefulPartitionedCall#^conv2d_101/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2H
"conv2d_100/StatefulPartitionedCall"conv2d_100/StatefulPartitionedCall2H
"conv2d_101/StatefulPartitionedCall"conv2d_101/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1
м
╠
+__inference_my_model_1_layer_call_fn_133271
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
АbА
	unknown_8:	А
	unknown_9:	А'

unknown_10:'
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_my_model_1_layer_call_and_return_conditional_losses_133244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         '`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1
Е
 
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133001

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
А
┼
$__inference_signature_wrapper_133448
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
АbА
	unknown_8:	А
	unknown_9:	А'

unknown_10:'
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В **
f%R#
!__inference__wrapped_model_132920o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         '`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1
Е
 
F__inference_conv2d_100_layer_call_and_return_conditional_losses_133688

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         88@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         88@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         88@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         88@
 
_user_specified_nameinputs
Р
■
E__inference_conv2d_98_layer_call_and_return_conditional_losses_133648

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
─
F
*__inference_dropout_3_layer_call_fn_133728

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_133110h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╤

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_133740

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
щ7
┘
"__inference__traced_restore_133964
file_prefixF
,assignvariableop_my_model_1_conv2d_98_kernel: :
,assignvariableop_1_my_model_1_conv2d_98_bias: H
.assignvariableop_2_my_model_1_conv2d_99_kernel: @:
,assignvariableop_3_my_model_1_conv2d_99_bias:@I
/assignvariableop_4_my_model_1_conv2d_100_kernel:@@;
-assignvariableop_5_my_model_1_conv2d_100_bias:@I
/assignvariableop_6_my_model_1_conv2d_101_kernel:@@;
-assignvariableop_7_my_model_1_conv2d_101_bias:@@
,assignvariableop_8_my_model_1_dense_8_kernel:
АbА9
*assignvariableop_9_my_model_1_dense_8_bias:	А@
-assignvariableop_10_my_model_1_dense_9_kernel:	А'9
+assignvariableop_11_my_model_1_dense_9_bias:'
identity_13ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9я
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Х
valueЛBИB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHК
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ▀
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOpAssignVariableOp,assignvariableop_my_model_1_conv2d_98_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_1AssignVariableOp,assignvariableop_1_my_model_1_conv2d_98_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_2AssignVariableOp.assignvariableop_2_my_model_1_conv2d_99_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_3AssignVariableOp,assignvariableop_3_my_model_1_conv2d_99_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_4AssignVariableOp/assignvariableop_4_my_model_1_conv2d_100_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_5AssignVariableOp-assignvariableop_5_my_model_1_conv2d_100_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_6AssignVariableOp/assignvariableop_6_my_model_1_conv2d_101_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_7AssignVariableOp-assignvariableop_7_my_model_1_conv2d_101_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_8AssignVariableOp,assignvariableop_8_my_model_1_dense_8_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_9AssignVariableOp*assignvariableop_9_my_model_1_dense_8_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_10AssignVariableOp-assignvariableop_10_my_model_1_dense_9_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_11AssignVariableOp+assignvariableop_11_my_model_1_dense_9_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ╫
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: ─
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
┌A
╪	
F__inference_my_model_1_layer_call_and_return_conditional_losses_133628
xB
(conv2d_98_conv2d_readvariableop_resource: 7
)conv2d_98_biasadd_readvariableop_resource: B
(conv2d_99_conv2d_readvariableop_resource: @7
)conv2d_99_biasadd_readvariableop_resource:@C
)conv2d_100_conv2d_readvariableop_resource:@@8
*conv2d_100_biasadd_readvariableop_resource:@C
)conv2d_101_conv2d_readvariableop_resource:@@8
*conv2d_101_biasadd_readvariableop_resource:@:
&dense_8_matmul_readvariableop_resource:
АbА6
'dense_8_biasadd_readvariableop_resource:	А9
&dense_9_matmul_readvariableop_resource:	А'5
'dense_9_biasadd_readvariableop_resource:'
identityИв!conv2d_100/BiasAdd/ReadVariableOpв conv2d_100/Conv2D/ReadVariableOpв!conv2d_101/BiasAdd/ReadVariableOpв conv2d_101/Conv2D/ReadVariableOpв conv2d_98/BiasAdd/ReadVariableOpвconv2d_98/Conv2D/ReadVariableOpв conv2d_99/BiasAdd/ReadVariableOpвconv2d_99/Conv2D/ReadVariableOpвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpР
conv2d_98/Conv2D/ReadVariableOpReadVariableOp(conv2d_98_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0к
conv2d_98/Conv2DConv2Dx'conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр *
paddingSAME*
strides
Ж
 conv2d_98/BiasAdd/ReadVariableOpReadVariableOp)conv2d_98_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_98/BiasAddBiasAddconv2d_98/Conv2D:output:0(conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр n
conv2d_98/ReluReluconv2d_98/BiasAdd:output:0*
T0*1
_output_shapes
:         рр н
max_pooling2d_5/MaxPoolMaxPoolconv2d_98/Relu:activations:0*/
_output_shapes
:         pp *
ksize
*
paddingVALID*
strides
Р
conv2d_99/Conv2D/ReadVariableOpReadVariableOp(conv2d_99_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╟
conv2d_99/Conv2DConv2D max_pooling2d_5/MaxPool:output:0'conv2d_99/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
Ж
 conv2d_99/BiasAdd/ReadVariableOpReadVariableOp)conv2d_99_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_99/BiasAddBiasAddconv2d_99/Conv2D:output:0(conv2d_99/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@l
conv2d_99/ReluReluconv2d_99/BiasAdd:output:0*
T0*/
_output_shapes
:         pp@п
max_pooling2d_5/MaxPool_1MaxPoolconv2d_99/Relu:activations:0*/
_output_shapes
:         88@*
ksize
*
paddingVALID*
strides
Т
 conv2d_100/Conv2D/ReadVariableOpReadVariableOp)conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╦
conv2d_100/Conv2DConv2D"max_pooling2d_5/MaxPool_1:output:0(conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@*
paddingSAME*
strides
И
!conv2d_100/BiasAdd/ReadVariableOpReadVariableOp*conv2d_100_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
conv2d_100/BiasAddBiasAddconv2d_100/Conv2D:output:0)conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@n
conv2d_100/ReluReluconv2d_100/BiasAdd:output:0*
T0*/
_output_shapes
:         88@░
max_pooling2d_5/MaxPool_2MaxPoolconv2d_100/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Т
 conv2d_101/Conv2D/ReadVariableOpReadVariableOp)conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╦
conv2d_101/Conv2DConv2D"max_pooling2d_5/MaxPool_2:output:0(conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
И
!conv2d_101/BiasAdd/ReadVariableOpReadVariableOp*conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
conv2d_101/BiasAddBiasAddconv2d_101/Conv2D:output:0)conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @n
conv2d_101/ReluReluconv2d_101/BiasAdd:output:0*
T0*/
_output_shapes
:         @░
max_pooling2d_5/MaxPool_3MaxPoolconv2d_101/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
|
dropout_3/IdentityIdentity"max_pooling2d_5/MaxPool_3:output:0*
T0*/
_output_shapes
:         @`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  Ж
flatten_3/ReshapeReshapedropout_3/Identity:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         АbЖ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype0О
dense_8/MatMulMatMulflatten_3/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:         Аm
dropout_4/IdentityIdentitydense_8/Relu:activations:0*
T0*(
_output_shapes
:         АЕ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	А'*
dtype0О
dense_9/MatMulMatMuldropout_4/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'В
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype0О
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         'h
IdentityIdentitydense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         'р
NoOpNoOp"^conv2d_100/BiasAdd/ReadVariableOp!^conv2d_100/Conv2D/ReadVariableOp"^conv2d_101/BiasAdd/ReadVariableOp!^conv2d_101/Conv2D/ReadVariableOp!^conv2d_98/BiasAdd/ReadVariableOp ^conv2d_98/Conv2D/ReadVariableOp!^conv2d_99/BiasAdd/ReadVariableOp ^conv2d_99/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2F
!conv2d_100/BiasAdd/ReadVariableOp!conv2d_100/BiasAdd/ReadVariableOp2D
 conv2d_100/Conv2D/ReadVariableOp conv2d_100/Conv2D/ReadVariableOp2F
!conv2d_101/BiasAdd/ReadVariableOp!conv2d_101/BiasAdd/ReadVariableOp2D
 conv2d_101/Conv2D/ReadVariableOp conv2d_101/Conv2D/ReadVariableOp2D
 conv2d_98/BiasAdd/ReadVariableOp conv2d_98/BiasAdd/ReadVariableOp2B
conv2d_98/Conv2D/ReadVariableOpconv2d_98/Conv2D/ReadVariableOp2D
 conv2d_99/BiasAdd/ReadVariableOp conv2d_99/BiasAdd/ReadVariableOp2B
conv2d_99/Conv2D/ReadVariableOpconv2d_99/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:T P
1
_output_shapes
:         рр

_user_specified_namex
Шd
н
__inference__traced_save_133918
file_prefixL
2read_disablecopyonread_my_model_1_conv2d_98_kernel: @
2read_1_disablecopyonread_my_model_1_conv2d_98_bias: N
4read_2_disablecopyonread_my_model_1_conv2d_99_kernel: @@
2read_3_disablecopyonread_my_model_1_conv2d_99_bias:@O
5read_4_disablecopyonread_my_model_1_conv2d_100_kernel:@@A
3read_5_disablecopyonread_my_model_1_conv2d_100_bias:@O
5read_6_disablecopyonread_my_model_1_conv2d_101_kernel:@@A
3read_7_disablecopyonread_my_model_1_conv2d_101_bias:@F
2read_8_disablecopyonread_my_model_1_dense_8_kernel:
АbА?
0read_9_disablecopyonread_my_model_1_dense_8_bias:	АF
3read_10_disablecopyonread_my_model_1_dense_9_kernel:	А'?
1read_11_disablecopyonread_my_model_1_dense_9_bias:'
savev2_const
identity_25ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Д
Read/DisableCopyOnReadDisableCopyOnRead2read_disablecopyonread_my_model_1_conv2d_98_kernel"/device:CPU:0*
_output_shapes
 ╢
Read/ReadVariableOpReadVariableOp2read_disablecopyonread_my_model_1_conv2d_98_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ж
Read_1/DisableCopyOnReadDisableCopyOnRead2read_1_disablecopyonread_my_model_1_conv2d_98_bias"/device:CPU:0*
_output_shapes
 о
Read_1/ReadVariableOpReadVariableOp2read_1_disablecopyonread_my_model_1_conv2d_98_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: И
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_my_model_1_conv2d_99_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_my_model_1_conv2d_99_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Ж
Read_3/DisableCopyOnReadDisableCopyOnRead2read_3_disablecopyonread_my_model_1_conv2d_99_bias"/device:CPU:0*
_output_shapes
 о
Read_3/ReadVariableOpReadVariableOp2read_3_disablecopyonread_my_model_1_conv2d_99_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@Й
Read_4/DisableCopyOnReadDisableCopyOnRead5read_4_disablecopyonread_my_model_1_conv2d_100_kernel"/device:CPU:0*
_output_shapes
 ╜
Read_4/ReadVariableOpReadVariableOp5read_4_disablecopyonread_my_model_1_conv2d_100_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@З
Read_5/DisableCopyOnReadDisableCopyOnRead3read_5_disablecopyonread_my_model_1_conv2d_100_bias"/device:CPU:0*
_output_shapes
 п
Read_5/ReadVariableOpReadVariableOp3read_5_disablecopyonread_my_model_1_conv2d_100_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@Й
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_my_model_1_conv2d_101_kernel"/device:CPU:0*
_output_shapes
 ╜
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_my_model_1_conv2d_101_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@З
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_my_model_1_conv2d_101_bias"/device:CPU:0*
_output_shapes
 п
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_my_model_1_conv2d_101_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_8/DisableCopyOnReadDisableCopyOnRead2read_8_disablecopyonread_my_model_1_dense_8_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_8/ReadVariableOpReadVariableOp2read_8_disablecopyonread_my_model_1_dense_8_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АbА*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АbАg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АbАД
Read_9/DisableCopyOnReadDisableCopyOnRead0read_9_disablecopyonread_my_model_1_dense_8_bias"/device:CPU:0*
_output_shapes
 н
Read_9/ReadVariableOpReadVariableOp0read_9_disablecopyonread_my_model_1_dense_8_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:АИ
Read_10/DisableCopyOnReadDisableCopyOnRead3read_10_disablecopyonread_my_model_1_dense_9_kernel"/device:CPU:0*
_output_shapes
 ╢
Read_10/ReadVariableOpReadVariableOp3read_10_disablecopyonread_my_model_1_dense_9_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А'*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А'f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А'Ж
Read_11/DisableCopyOnReadDisableCopyOnRead1read_11_disablecopyonread_my_model_1_dense_9_bias"/device:CPU:0*
_output_shapes
 п
Read_11/ReadVariableOpReadVariableOp1read_11_disablecopyonread_my_model_1_dense_9_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:'*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:'a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:'ь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Х
valueЛBИB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЗ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ч
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_24Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_25IdentityIdentity_24:output:0^NoOp*
T0*
_output_shapes
: ┐
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*/
_input_shapes
: : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
╤

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_133020

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
г

ї
C__inference_dense_9_layer_call_and_return_conditional_losses_133072

inputs1
matmul_readvariableop_resource:	А'-
biasadd_readvariableop_resource:'
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А'*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:'*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         '`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╠
Ш
(__inference_dense_8_layer_call_fn_133792

inputs
unknown:
АbА
	unknown_0:	А
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_133041p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аb: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Аb
 
_user_specified_nameinputs
Е
 
F__inference_conv2d_100_layer_call_and_return_conditional_losses_132983

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         88@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         88@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         88@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         88@
 
_user_specified_nameinputs
йN
┴
!__inference__wrapped_model_132920
input_1M
3my_model_1_conv2d_98_conv2d_readvariableop_resource: B
4my_model_1_conv2d_98_biasadd_readvariableop_resource: M
3my_model_1_conv2d_99_conv2d_readvariableop_resource: @B
4my_model_1_conv2d_99_biasadd_readvariableop_resource:@N
4my_model_1_conv2d_100_conv2d_readvariableop_resource:@@C
5my_model_1_conv2d_100_biasadd_readvariableop_resource:@N
4my_model_1_conv2d_101_conv2d_readvariableop_resource:@@C
5my_model_1_conv2d_101_biasadd_readvariableop_resource:@E
1my_model_1_dense_8_matmul_readvariableop_resource:
АbАA
2my_model_1_dense_8_biasadd_readvariableop_resource:	АD
1my_model_1_dense_9_matmul_readvariableop_resource:	А'@
2my_model_1_dense_9_biasadd_readvariableop_resource:'
identityИв,my_model_1/conv2d_100/BiasAdd/ReadVariableOpв+my_model_1/conv2d_100/Conv2D/ReadVariableOpв,my_model_1/conv2d_101/BiasAdd/ReadVariableOpв+my_model_1/conv2d_101/Conv2D/ReadVariableOpв+my_model_1/conv2d_98/BiasAdd/ReadVariableOpв*my_model_1/conv2d_98/Conv2D/ReadVariableOpв+my_model_1/conv2d_99/BiasAdd/ReadVariableOpв*my_model_1/conv2d_99/Conv2D/ReadVariableOpв)my_model_1/dense_8/BiasAdd/ReadVariableOpв(my_model_1/dense_8/MatMul/ReadVariableOpв)my_model_1/dense_9/BiasAdd/ReadVariableOpв(my_model_1/dense_9/MatMul/ReadVariableOpж
*my_model_1/conv2d_98/Conv2D/ReadVariableOpReadVariableOp3my_model_1_conv2d_98_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╞
my_model_1/conv2d_98/Conv2DConv2Dinput_12my_model_1/conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр *
paddingSAME*
strides
Ь
+my_model_1/conv2d_98/BiasAdd/ReadVariableOpReadVariableOp4my_model_1_conv2d_98_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╛
my_model_1/conv2d_98/BiasAddBiasAdd$my_model_1/conv2d_98/Conv2D:output:03my_model_1/conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр Д
my_model_1/conv2d_98/ReluRelu%my_model_1/conv2d_98/BiasAdd:output:0*
T0*1
_output_shapes
:         рр ├
"my_model_1/max_pooling2d_5/MaxPoolMaxPool'my_model_1/conv2d_98/Relu:activations:0*/
_output_shapes
:         pp *
ksize
*
paddingVALID*
strides
ж
*my_model_1/conv2d_99/Conv2D/ReadVariableOpReadVariableOp3my_model_1_conv2d_99_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ш
my_model_1/conv2d_99/Conv2DConv2D+my_model_1/max_pooling2d_5/MaxPool:output:02my_model_1/conv2d_99/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
Ь
+my_model_1/conv2d_99/BiasAdd/ReadVariableOpReadVariableOp4my_model_1_conv2d_99_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╝
my_model_1/conv2d_99/BiasAddBiasAdd$my_model_1/conv2d_99/Conv2D:output:03my_model_1/conv2d_99/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@В
my_model_1/conv2d_99/ReluRelu%my_model_1/conv2d_99/BiasAdd:output:0*
T0*/
_output_shapes
:         pp@┼
$my_model_1/max_pooling2d_5/MaxPool_1MaxPool'my_model_1/conv2d_99/Relu:activations:0*/
_output_shapes
:         88@*
ksize
*
paddingVALID*
strides
и
+my_model_1/conv2d_100/Conv2D/ReadVariableOpReadVariableOp4my_model_1_conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ь
my_model_1/conv2d_100/Conv2DConv2D-my_model_1/max_pooling2d_5/MaxPool_1:output:03my_model_1/conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@*
paddingSAME*
strides
Ю
,my_model_1/conv2d_100/BiasAdd/ReadVariableOpReadVariableOp5my_model_1_conv2d_100_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
my_model_1/conv2d_100/BiasAddBiasAdd%my_model_1/conv2d_100/Conv2D:output:04my_model_1/conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         88@Д
my_model_1/conv2d_100/ReluRelu&my_model_1/conv2d_100/BiasAdd:output:0*
T0*/
_output_shapes
:         88@╞
$my_model_1/max_pooling2d_5/MaxPool_2MaxPool(my_model_1/conv2d_100/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
и
+my_model_1/conv2d_101/Conv2D/ReadVariableOpReadVariableOp4my_model_1_conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ь
my_model_1/conv2d_101/Conv2DConv2D-my_model_1/max_pooling2d_5/MaxPool_2:output:03my_model_1/conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ю
,my_model_1/conv2d_101/BiasAdd/ReadVariableOpReadVariableOp5my_model_1_conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
my_model_1/conv2d_101/BiasAddBiasAdd%my_model_1/conv2d_101/Conv2D:output:04my_model_1/conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
my_model_1/conv2d_101/ReluRelu&my_model_1/conv2d_101/BiasAdd:output:0*
T0*/
_output_shapes
:         @╞
$my_model_1/max_pooling2d_5/MaxPool_3MaxPool(my_model_1/conv2d_101/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Т
my_model_1/dropout_3/IdentityIdentity-my_model_1/max_pooling2d_5/MaxPool_3:output:0*
T0*/
_output_shapes
:         @k
my_model_1/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  з
my_model_1/flatten_3/ReshapeReshape&my_model_1/dropout_3/Identity:output:0#my_model_1/flatten_3/Const:output:0*
T0*(
_output_shapes
:         АbЬ
(my_model_1/dense_8/MatMul/ReadVariableOpReadVariableOp1my_model_1_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype0п
my_model_1/dense_8/MatMulMatMul%my_model_1/flatten_3/Reshape:output:00my_model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЩ
)my_model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp2my_model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
my_model_1/dense_8/BiasAddBiasAdd#my_model_1/dense_8/MatMul:product:01my_model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
my_model_1/dense_8/ReluRelu#my_model_1/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:         АГ
my_model_1/dropout_4/IdentityIdentity%my_model_1/dense_8/Relu:activations:0*
T0*(
_output_shapes
:         АЫ
(my_model_1/dense_9/MatMul/ReadVariableOpReadVariableOp1my_model_1_dense_9_matmul_readvariableop_resource*
_output_shapes
:	А'*
dtype0п
my_model_1/dense_9/MatMulMatMul&my_model_1/dropout_4/Identity:output:00my_model_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'Ш
)my_model_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp2my_model_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype0п
my_model_1/dense_9/BiasAddBiasAdd#my_model_1/dense_9/MatMul:product:01my_model_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         '|
my_model_1/dense_9/SoftmaxSoftmax#my_model_1/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         's
IdentityIdentity$my_model_1/dense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         'ф
NoOpNoOp-^my_model_1/conv2d_100/BiasAdd/ReadVariableOp,^my_model_1/conv2d_100/Conv2D/ReadVariableOp-^my_model_1/conv2d_101/BiasAdd/ReadVariableOp,^my_model_1/conv2d_101/Conv2D/ReadVariableOp,^my_model_1/conv2d_98/BiasAdd/ReadVariableOp+^my_model_1/conv2d_98/Conv2D/ReadVariableOp,^my_model_1/conv2d_99/BiasAdd/ReadVariableOp+^my_model_1/conv2d_99/Conv2D/ReadVariableOp*^my_model_1/dense_8/BiasAdd/ReadVariableOp)^my_model_1/dense_8/MatMul/ReadVariableOp*^my_model_1/dense_9/BiasAdd/ReadVariableOp)^my_model_1/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2\
,my_model_1/conv2d_100/BiasAdd/ReadVariableOp,my_model_1/conv2d_100/BiasAdd/ReadVariableOp2Z
+my_model_1/conv2d_100/Conv2D/ReadVariableOp+my_model_1/conv2d_100/Conv2D/ReadVariableOp2\
,my_model_1/conv2d_101/BiasAdd/ReadVariableOp,my_model_1/conv2d_101/BiasAdd/ReadVariableOp2Z
+my_model_1/conv2d_101/Conv2D/ReadVariableOp+my_model_1/conv2d_101/Conv2D/ReadVariableOp2Z
+my_model_1/conv2d_98/BiasAdd/ReadVariableOp+my_model_1/conv2d_98/BiasAdd/ReadVariableOp2X
*my_model_1/conv2d_98/Conv2D/ReadVariableOp*my_model_1/conv2d_98/Conv2D/ReadVariableOp2Z
+my_model_1/conv2d_99/BiasAdd/ReadVariableOp+my_model_1/conv2d_99/BiasAdd/ReadVariableOp2X
*my_model_1/conv2d_99/Conv2D/ReadVariableOp*my_model_1/conv2d_99/Conv2D/ReadVariableOp2V
)my_model_1/dense_8/BiasAdd/ReadVariableOp)my_model_1/dense_8/BiasAdd/ReadVariableOp2T
(my_model_1/dense_8/MatMul/ReadVariableOp(my_model_1/dense_8/MatMul/ReadVariableOp2V
)my_model_1/dense_9/BiasAdd/ReadVariableOp)my_model_1/dense_9/BiasAdd/ReadVariableOp2T
(my_model_1/dense_9/MatMul/ReadVariableOp(my_model_1/dense_9/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1
Ц
c
*__inference_dropout_3_layer_call_fn_133723

inputs
identityИвStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_133020w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
є
а
+__inference_conv2d_101_layer_call_fn_133697

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133001w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ
╞
+__inference_my_model_1_layer_call_fn_133506
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
АbА
	unknown_8:	А
	unknown_9:	А'

unknown_10:'
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_my_model_1_layer_call_and_return_conditional_losses_133244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         '`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:         рр

_user_specified_namex
╘8
╢
F__inference_my_model_1_layer_call_and_return_conditional_losses_133174
x*
conv2d_98_133136: 
conv2d_98_133138: *
conv2d_99_133142: @
conv2d_99_133144:@+
conv2d_100_133148:@@
conv2d_100_133150:@+
conv2d_101_133154:@@
conv2d_101_133156:@"
dense_8_133162:
АbА
dense_8_133164:	А!
dense_9_133168:	А'
dense_9_133170:'
identityИв"conv2d_100/StatefulPartitionedCallв"conv2d_101/StatefulPartitionedCallв!conv2d_98/StatefulPartitionedCallв!conv2d_99/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCall■
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCallxconv2d_98_133136conv2d_98_133138*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_132947ў
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926г
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_99_133142conv2d_99_133144*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_132965∙
!max_pooling2d_5/PartitionedCall_1PartitionedCall*conv2d_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_100/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_1:output:0conv2d_100_133148conv2d_100_133150*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_100_layer_call_and_return_conditional_losses_132983·
!max_pooling2d_5/PartitionedCall_2PartitionedCall+conv2d_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_101/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_2:output:0conv2d_101_133154conv2d_101_133156*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133001·
!max_pooling2d_5/PartitionedCall_3PartitionedCall+conv2d_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926√
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_3:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_133020ф
flatten_3/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_133028О
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_8_133162dense_8_133164*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_133041Ц
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_133059Х
dense_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_9_133168dense_9_133170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_133072w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         'ф
NoOpNoOp#^conv2d_100/StatefulPartitionedCall#^conv2d_101/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2H
"conv2d_100/StatefulPartitionedCall"conv2d_100/StatefulPartitionedCall2H
"conv2d_101/StatefulPartitionedCall"conv2d_101/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:T P
1
_output_shapes
:         рр

_user_specified_namex
ж

ў
C__inference_dense_8_layer_call_and_return_conditional_losses_133803

inputs2
matmul_readvariableop_resource:
АbА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аb: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Аb
 
_user_specified_nameinputs
Е
 
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133708

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
р5
ю
F__inference_my_model_1_layer_call_and_return_conditional_losses_133244
x*
conv2d_98_133206: 
conv2d_98_133208: *
conv2d_99_133212: @
conv2d_99_133214:@+
conv2d_100_133218:@@
conv2d_100_133220:@+
conv2d_101_133224:@@
conv2d_101_133226:@"
dense_8_133232:
АbА
dense_8_133234:	А!
dense_9_133238:	А'
dense_9_133240:'
identityИв"conv2d_100/StatefulPartitionedCallв"conv2d_101/StatefulPartitionedCallв!conv2d_98/StatefulPartitionedCallв!conv2d_99/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCall■
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCallxconv2d_98_133206conv2d_98_133208*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_132947ў
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926г
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_99_133212conv2d_99_133214*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_132965∙
!max_pooling2d_5/PartitionedCall_1PartitionedCall*conv2d_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_100/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_1:output:0conv2d_100_133218conv2d_100_133220*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_100_layer_call_and_return_conditional_losses_132983·
!max_pooling2d_5/PartitionedCall_2PartitionedCall+conv2d_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_101/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_2:output:0conv2d_101_133224conv2d_101_133226*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133001·
!max_pooling2d_5/PartitionedCall_3PartitionedCall+conv2d_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926ы
dropout_3/PartitionedCallPartitionedCall*max_pooling2d_5/PartitionedCall_3:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_133110▄
flatten_3/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_133028О
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_8_133232dense_8_133234*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_133041т
dropout_4/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_133122Н
dense_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_9_133238dense_9_133240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_133072w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         'Ь
NoOpNoOp#^conv2d_100/StatefulPartitionedCall#^conv2d_101/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2H
"conv2d_100/StatefulPartitionedCall"conv2d_100/StatefulPartitionedCall2H
"conv2d_101/StatefulPartitionedCall"conv2d_101/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:T P
1
_output_shapes
:         рр

_user_specified_namex
▄
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_133122

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
є
а
+__inference_conv2d_100_layer_call_fn_133677

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_100_layer_call_and_return_conditional_losses_132983w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         88@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         88@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         88@
 
_user_specified_nameinputs
ж

ў
C__inference_dense_8_layer_call_and_return_conditional_losses_133041

inputs2
matmul_readvariableop_resource:
АbА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АbА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аb: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Аb
 
_user_specified_nameinputs
╚
Ц
(__inference_dense_9_layer_call_fn_133812

inputs
unknown:	А'
	unknown_0:'
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_133072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         '`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╟
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_133028

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АbY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Аb"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
а

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_133767

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Р
■
E__inference_conv2d_98_layer_call_and_return_conditional_losses_132947

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_133718

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Д
■
E__inference_conv2d_99_layer_call_and_return_conditional_losses_132965

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         pp@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         pp@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp 
 
_user_specified_nameinputs
г

ї
C__inference_dense_9_layer_call_and_return_conditional_losses_133823

inputs1
matmul_readvariableop_resource:	А'-
biasadd_readvariableop_resource:'
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А'*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:'*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         'V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         '`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
·
c
*__inference_dropout_4_layer_call_fn_133750

inputs
identityИвStatefulPartitionedCall╞
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_133059p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_133110

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
м
╠
+__inference_my_model_1_layer_call_fn_133201
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
АbА
	unknown_8:	А
	unknown_9:	А'

unknown_10:'
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_my_model_1_layer_call_and_return_conditional_losses_133174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         '`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1
╢
F
*__inference_flatten_3_layer_call_fn_133777

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_133028a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Аb"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╜
L
0__inference_max_pooling2d_5_layer_call_fn_133713

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є5
Ї
F__inference_my_model_1_layer_call_and_return_conditional_losses_133130
input_1*
conv2d_98_133082: 
conv2d_98_133084: *
conv2d_99_133088: @
conv2d_99_133090:@+
conv2d_100_133094:@@
conv2d_100_133096:@+
conv2d_101_133100:@@
conv2d_101_133102:@"
dense_8_133113:
АbА
dense_8_133115:	А!
dense_9_133124:	А'
dense_9_133126:'
identityИв"conv2d_100/StatefulPartitionedCallв"conv2d_101/StatefulPartitionedCallв!conv2d_98/StatefulPartitionedCallв!conv2d_99/StatefulPartitionedCallвdense_8/StatefulPartitionedCallвdense_9/StatefulPartitionedCallД
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_98_133082conv2d_98_133084*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_132947ў
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926г
!conv2d_99/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_99_133088conv2d_99_133090*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_99_layer_call_and_return_conditional_losses_132965∙
!max_pooling2d_5/PartitionedCall_1PartitionedCall*conv2d_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_100/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_1:output:0conv2d_100_133094conv2d_100_133096*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_100_layer_call_and_return_conditional_losses_132983·
!max_pooling2d_5/PartitionedCall_2PartitionedCall+conv2d_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926й
"conv2d_101/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_5/PartitionedCall_2:output:0conv2d_101_133100conv2d_101_133102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133001·
!max_pooling2d_5/PartitionedCall_3PartitionedCall+conv2d_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_132926ы
dropout_3/PartitionedCallPartitionedCall*max_pooling2d_5/PartitionedCall_3:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_133110▄
flatten_3/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аb* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_133028О
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_8_133113dense_8_133115*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_133041т
dropout_4/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_133122Н
dense_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_9_133124dense_9_133126*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         '*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_133072w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         'Ь
NoOpNoOp#^conv2d_100/StatefulPartitionedCall#^conv2d_101/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall"^conv2d_99/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         рр: : : : : : : : : : : : 2H
"conv2d_100/StatefulPartitionedCall"conv2d_100/StatefulPartitionedCall2H
"conv2d_101/StatefulPartitionedCall"conv2d_101/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2F
!conv2d_99/StatefulPartitionedCall!conv2d_99/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1"є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╡
serving_defaultб
E
input_1:
serving_default_input_1:0         рр<
output_10
StatefulPartitionedCall:0         'tensorflow/serving/predict:╨ё
╟
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2
	
conv3
	conv4
pooling
drop
	drop1
flatten
d3
dense_output

signatures"
_tf_keras_model
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╥
$trace_0
%trace_1
&trace_2
'trace_32ч
+__inference_my_model_1_layer_call_fn_133201
+__inference_my_model_1_layer_call_fn_133271
+__inference_my_model_1_layer_call_fn_133477
+__inference_my_model_1_layer_call_fn_133506░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z$trace_0z%trace_1z&trace_2z'trace_3
╛
(trace_0
)trace_1
*trace_2
+trace_32╙
F__inference_my_model_1_layer_call_and_return_conditional_losses_133079
F__inference_my_model_1_layer_call_and_return_conditional_losses_133130
F__inference_my_model_1_layer_call_and_return_conditional_losses_133574
F__inference_my_model_1_layer_call_and_return_conditional_losses_133628░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 z(trace_0z)trace_1z*trace_2z+trace_3
╠B╔
!__inference__wrapped_model_132920input_1"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▌
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
▌
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
▌
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

kernel
bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
▌
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
 G_jit_compiled_convolution_op"
_tf_keras_layer
е
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator"
_tf_keras_layer
╝
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses
[_random_generator"
_tf_keras_layer
е
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╗
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
,
nserving_default"
signature_map
5:3 2my_model_1/conv2d_98/kernel
':% 2my_model_1/conv2d_98/bias
5:3 @2my_model_1/conv2d_99/kernel
':%@2my_model_1/conv2d_99/bias
6:4@@2my_model_1/conv2d_100/kernel
(:&@2my_model_1/conv2d_100/bias
6:4@@2my_model_1/conv2d_101/kernel
(:&@2my_model_1/conv2d_101/bias
-:+
АbА2my_model_1/dense_8/kernel
&:$А2my_model_1/dense_8/bias
,:*	А'2my_model_1/dense_9/kernel
%:#'2my_model_1/dense_9/bias
 "
trackable_list_wrapper
f
0
	1

2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
+__inference_my_model_1_layer_call_fn_133201input_1"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
юBы
+__inference_my_model_1_layer_call_fn_133271input_1"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
шBх
+__inference_my_model_1_layer_call_fn_133477x"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
шBх
+__inference_my_model_1_layer_call_fn_133506x"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ЙBЖ
F__inference_my_model_1_layer_call_and_return_conditional_losses_133079input_1"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ЙBЖ
F__inference_my_model_1_layer_call_and_return_conditional_losses_133130input_1"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ГBА
F__inference_my_model_1_layer_call_and_return_conditional_losses_133574x"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ГBА
F__inference_my_model_1_layer_call_and_return_conditional_losses_133628x"░
й▓е
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ф
ttrace_02╟
*__inference_conv2d_98_layer_call_fn_133637Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zttrace_0
 
utrace_02т
E__inference_conv2d_98_layer_call_and_return_conditional_losses_133648Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zutrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ф
{trace_02╟
*__inference_conv2d_99_layer_call_fn_133657Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z{trace_0
 
|trace_02т
E__inference_conv2d_99_layer_call_and_return_conditional_losses_133668Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z|trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
п
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ч
Вtrace_02╚
+__inference_conv2d_100_layer_call_fn_133677Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zВtrace_0
В
Гtrace_02у
F__inference_conv2d_100_layer_call_and_return_conditional_losses_133688Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zГtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ч
Йtrace_02╚
+__inference_conv2d_101_layer_call_fn_133697Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0
В
Кtrace_02у
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133708Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zКtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ь
Рtrace_02═
0__inference_max_pooling2d_5_layer_call_fn_133713Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
З
Сtrace_02ш
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_133718Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zСtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
┐
Чtrace_0
Шtrace_12Д
*__inference_dropout_3_layer_call_fn_133723
*__inference_dropout_3_layer_call_fn_133728й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0zШtrace_1
ї
Щtrace_0
Ъtrace_12║
E__inference_dropout_3_layer_call_and_return_conditional_losses_133740
E__inference_dropout_3_layer_call_and_return_conditional_losses_133745й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0zЪtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
┐
аtrace_0
бtrace_12Д
*__inference_dropout_4_layer_call_fn_133750
*__inference_dropout_4_layer_call_fn_133755й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0zбtrace_1
ї
вtrace_0
гtrace_12║
E__inference_dropout_4_layer_call_and_return_conditional_losses_133767
E__inference_dropout_4_layer_call_and_return_conditional_losses_133772й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0zгtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
ц
йtrace_02╟
*__inference_flatten_3_layer_call_fn_133777Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0
Б
кtrace_02т
E__inference_flatten_3_layer_call_and_return_conditional_losses_133783Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
ф
░trace_02┼
(__inference_dense_8_layer_call_fn_133792Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
 
▒trace_02р
C__inference_dense_8_layer_call_and_return_conditional_losses_133803Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
ф
╖trace_02┼
(__inference_dense_9_layer_call_fn_133812Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
 
╕trace_02р
C__inference_dense_9_layer_call_and_return_conditional_losses_133823Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
╦B╚
$__inference_signature_wrapper_133448input_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╘B╤
*__inference_conv2d_98_layer_call_fn_133637inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_conv2d_98_layer_call_and_return_conditional_losses_133648inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╘B╤
*__inference_conv2d_99_layer_call_fn_133657inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_conv2d_99_layer_call_and_return_conditional_losses_133668inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╒B╥
+__inference_conv2d_100_layer_call_fn_133677inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
F__inference_conv2d_100_layer_call_and_return_conditional_losses_133688inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╒B╥
+__inference_conv2d_101_layer_call_fn_133697inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133708inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_5_layer_call_fn_133713inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_133718inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
*__inference_dropout_3_layer_call_fn_133723inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
хBт
*__inference_dropout_3_layer_call_fn_133728inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_3_layer_call_and_return_conditional_losses_133740inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_3_layer_call_and_return_conditional_losses_133745inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
*__inference_dropout_4_layer_call_fn_133750inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
хBт
*__inference_dropout_4_layer_call_fn_133755inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_4_layer_call_and_return_conditional_losses_133767inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_4_layer_call_and_return_conditional_losses_133772inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╘B╤
*__inference_flatten_3_layer_call_fn_133777inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_flatten_3_layer_call_and_return_conditional_losses_133783inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_dense_8_layer_call_fn_133792inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_8_layer_call_and_return_conditional_losses_133803inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_dense_9_layer_call_fn_133812inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_9_layer_call_and_return_conditional_losses_133823inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 д
!__inference__wrapped_model_132920:в7
0в-
+К(
input_1         рр
к "3к0
.
output_1"К
output_1         '╜
F__inference_conv2d_100_layer_call_and_return_conditional_losses_133688s7в4
-в*
(К%
inputs         88@
к "4в1
*К'
tensor_0         88@
Ъ Ч
+__inference_conv2d_100_layer_call_fn_133677h7в4
-в*
(К%
inputs         88@
к ")К&
unknown         88@╜
F__inference_conv2d_101_layer_call_and_return_conditional_losses_133708s7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Ч
+__inference_conv2d_101_layer_call_fn_133697h7в4
-в*
(К%
inputs         @
к ")К&
unknown         @└
E__inference_conv2d_98_layer_call_and_return_conditional_losses_133648w9в6
/в,
*К'
inputs         рр
к "6в3
,К)
tensor_0         рр 
Ъ Ъ
*__inference_conv2d_98_layer_call_fn_133637l9в6
/в,
*К'
inputs         рр
к "+К(
unknown         рр ╝
E__inference_conv2d_99_layer_call_and_return_conditional_losses_133668s7в4
-в*
(К%
inputs         pp 
к "4в1
*К'
tensor_0         pp@
Ъ Ц
*__inference_conv2d_99_layer_call_fn_133657h7в4
-в*
(К%
inputs         pp 
к ")К&
unknown         pp@м
C__inference_dense_8_layer_call_and_return_conditional_losses_133803e0в-
&в#
!К
inputs         Аb
к "-в*
#К 
tensor_0         А
Ъ Ж
(__inference_dense_8_layer_call_fn_133792Z0в-
&в#
!К
inputs         Аb
к ""К
unknown         Ал
C__inference_dense_9_layer_call_and_return_conditional_losses_133823d0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         '
Ъ Е
(__inference_dense_9_layer_call_fn_133812Y0в-
&в#
!К
inputs         А
к "!К
unknown         '╝
E__inference_dropout_3_layer_call_and_return_conditional_losses_133740s;в8
1в.
(К%
inputs         @
p
к "4в1
*К'
tensor_0         @
Ъ ╝
E__inference_dropout_3_layer_call_and_return_conditional_losses_133745s;в8
1в.
(К%
inputs         @
p 
к "4в1
*К'
tensor_0         @
Ъ Ц
*__inference_dropout_3_layer_call_fn_133723h;в8
1в.
(К%
inputs         @
p
к ")К&
unknown         @Ц
*__inference_dropout_3_layer_call_fn_133728h;в8
1в.
(К%
inputs         @
p 
к ")К&
unknown         @о
E__inference_dropout_4_layer_call_and_return_conditional_losses_133767e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ о
E__inference_dropout_4_layer_call_and_return_conditional_losses_133772e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ И
*__inference_dropout_4_layer_call_fn_133750Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         АИ
*__inference_dropout_4_layer_call_fn_133755Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         А▒
E__inference_flatten_3_layer_call_and_return_conditional_losses_133783h7в4
-в*
(К%
inputs         @
к "-в*
#К 
tensor_0         Аb
Ъ Л
*__inference_flatten_3_layer_call_fn_133777]7в4
-в*
(К%
inputs         @
к ""К
unknown         Аbї
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_133718еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_5_layer_call_fn_133713ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╙
F__inference_my_model_1_layer_call_and_return_conditional_losses_133079ИJвG
0в-
+К(
input_1         рр
к

trainingp",в)
"К
tensor_0         '
Ъ ╙
F__inference_my_model_1_layer_call_and_return_conditional_losses_133130ИJвG
0в-
+К(
input_1         рр
к

trainingp ",в)
"К
tensor_0         '
Ъ ═
F__inference_my_model_1_layer_call_and_return_conditional_losses_133574ВDвA
*в'
%К"
x         рр
к

trainingp",в)
"К
tensor_0         '
Ъ ═
F__inference_my_model_1_layer_call_and_return_conditional_losses_133628ВDвA
*в'
%К"
x         рр
к

trainingp ",в)
"К
tensor_0         '
Ъ м
+__inference_my_model_1_layer_call_fn_133201}JвG
0в-
+К(
input_1         рр
к

trainingp"!К
unknown         'м
+__inference_my_model_1_layer_call_fn_133271}JвG
0в-
+К(
input_1         рр
к

trainingp "!К
unknown         'ж
+__inference_my_model_1_layer_call_fn_133477wDвA
*в'
%К"
x         рр
к

trainingp"!К
unknown         'ж
+__inference_my_model_1_layer_call_fn_133506wDвA
*в'
%К"
x         рр
к

trainingp "!К
unknown         '│
$__inference_signature_wrapper_133448КEвB
в 
;к8
6
input_1+К(
input_1         рр"3к0
.
output_1"К
output_1         '