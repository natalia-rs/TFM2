��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
.
Identity

input"T
output"T"	
Ttype
�
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8��
�
%Adam/module_wrapper_8/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_8/conv2d_2/bias/v
�
9Adam/module_wrapper_8/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_8/conv2d_2/bias/v*
_output_shapes
:*
dtype0
�
'Adam/module_wrapper_8/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/module_wrapper_8/conv2d_2/kernel/v
�
;Adam/module_wrapper_8/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_8/conv2d_2/kernel/v*&
_output_shapes
:@*
dtype0
�
-Adam/module_wrapper_6/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/module_wrapper_6/conv2d_transpose/bias/v
�
AAdam/module_wrapper_6/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOp-Adam/module_wrapper_6/conv2d_transpose/bias/v*
_output_shapes
:@*
dtype0
�
/Adam/module_wrapper_6/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *@
shared_name1/Adam/module_wrapper_6/conv2d_transpose/kernel/v
�
CAdam/module_wrapper_6/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOp/Adam/module_wrapper_6/conv2d_transpose/kernel/v*&
_output_shapes
:@ *
dtype0
�
%Adam/module_wrapper_2/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_2/conv2d_1/bias/v
�
9Adam/module_wrapper_2/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_1/bias/v*
_output_shapes
: *
dtype0
�
'Adam/module_wrapper_2/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_2/conv2d_1/kernel/v
�
;Adam/module_wrapper_2/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_1/kernel/v*&
_output_shapes
: *
dtype0
�
!Adam/module_wrapper/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/module_wrapper/conv2d/bias/v
�
5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/v*
_output_shapes
:*
dtype0
�
#Adam/module_wrapper/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/module_wrapper/conv2d/kernel/v
�
7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/v*&
_output_shapes
:*
dtype0
�
!Adam/group_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/group_normalization_2/beta/v
�
5Adam/group_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/group_normalization_2/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/group_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/group_normalization_2/gamma/v
�
6Adam/group_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/group_normalization_2/gamma/v*
_output_shapes
:@*
dtype0
�
!Adam/group_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/group_normalization_1/beta/v
�
5Adam/group_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/group_normalization_1/beta/v*
_output_shapes
: *
dtype0
�
"Adam/group_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/group_normalization_1/gamma/v
�
6Adam/group_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/group_normalization_1/gamma/v*
_output_shapes
: *
dtype0
�
Adam/group_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/group_normalization/beta/v
�
3Adam/group_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/group_normalization/beta/v*
_output_shapes
:*
dtype0
�
 Adam/group_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/group_normalization/gamma/v
�
4Adam/group_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/group_normalization/gamma/v*
_output_shapes
:*
dtype0
�
%Adam/module_wrapper_8/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_8/conv2d_2/bias/m
�
9Adam/module_wrapper_8/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_8/conv2d_2/bias/m*
_output_shapes
:*
dtype0
�
'Adam/module_wrapper_8/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/module_wrapper_8/conv2d_2/kernel/m
�
;Adam/module_wrapper_8/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_8/conv2d_2/kernel/m*&
_output_shapes
:@*
dtype0
�
-Adam/module_wrapper_6/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/module_wrapper_6/conv2d_transpose/bias/m
�
AAdam/module_wrapper_6/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOp-Adam/module_wrapper_6/conv2d_transpose/bias/m*
_output_shapes
:@*
dtype0
�
/Adam/module_wrapper_6/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *@
shared_name1/Adam/module_wrapper_6/conv2d_transpose/kernel/m
�
CAdam/module_wrapper_6/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOp/Adam/module_wrapper_6/conv2d_transpose/kernel/m*&
_output_shapes
:@ *
dtype0
�
%Adam/module_wrapper_2/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_2/conv2d_1/bias/m
�
9Adam/module_wrapper_2/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_1/bias/m*
_output_shapes
: *
dtype0
�
'Adam/module_wrapper_2/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_2/conv2d_1/kernel/m
�
;Adam/module_wrapper_2/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_1/kernel/m*&
_output_shapes
: *
dtype0
�
!Adam/module_wrapper/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/module_wrapper/conv2d/bias/m
�
5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/m*
_output_shapes
:*
dtype0
�
#Adam/module_wrapper/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/module_wrapper/conv2d/kernel/m
�
7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/m*&
_output_shapes
:*
dtype0
�
!Adam/group_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/group_normalization_2/beta/m
�
5Adam/group_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/group_normalization_2/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/group_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/group_normalization_2/gamma/m
�
6Adam/group_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/group_normalization_2/gamma/m*
_output_shapes
:@*
dtype0
�
!Adam/group_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/group_normalization_1/beta/m
�
5Adam/group_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/group_normalization_1/beta/m*
_output_shapes
: *
dtype0
�
"Adam/group_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/group_normalization_1/gamma/m
�
6Adam/group_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/group_normalization_1/gamma/m*
_output_shapes
: *
dtype0
�
Adam/group_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/group_normalization/beta/m
�
3Adam/group_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/group_normalization/beta/m*
_output_shapes
:*
dtype0
�
 Adam/group_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/group_normalization/gamma/m
�
4Adam/group_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/group_normalization/gamma/m*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
module_wrapper_8/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name module_wrapper_8/conv2d_2/bias
�
2module_wrapper_8/conv2d_2/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_8/conv2d_2/bias*
_output_shapes
:*
dtype0
�
 module_wrapper_8/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" module_wrapper_8/conv2d_2/kernel
�
4module_wrapper_8/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_8/conv2d_2/kernel*&
_output_shapes
:@*
dtype0
�
&module_wrapper_6/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&module_wrapper_6/conv2d_transpose/bias
�
:module_wrapper_6/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp&module_wrapper_6/conv2d_transpose/bias*
_output_shapes
:@*
dtype0
�
(module_wrapper_6/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(module_wrapper_6/conv2d_transpose/kernel
�
<module_wrapper_6/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp(module_wrapper_6/conv2d_transpose/kernel*&
_output_shapes
:@ *
dtype0
�
module_wrapper_2/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name module_wrapper_2/conv2d_1/bias
�
2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/conv2d_1/bias*
_output_shapes
: *
dtype0
�
 module_wrapper_2/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" module_wrapper_2/conv2d_1/kernel
�
4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_2/conv2d_1/kernel*&
_output_shapes
: *
dtype0
�
module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namemodule_wrapper/conv2d/bias
�
.module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/bias*
_output_shapes
:*
dtype0
�
module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namemodule_wrapper/conv2d/kernel
�
0module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/kernel*&
_output_shapes
:*
dtype0
�
group_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namegroup_normalization_2/beta
�
.group_normalization_2/beta/Read/ReadVariableOpReadVariableOpgroup_normalization_2/beta*
_output_shapes
:@*
dtype0
�
group_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namegroup_normalization_2/gamma
�
/group_normalization_2/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization_2/gamma*
_output_shapes
:@*
dtype0
�
group_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namegroup_normalization_1/beta
�
.group_normalization_1/beta/Read/ReadVariableOpReadVariableOpgroup_normalization_1/beta*
_output_shapes
: *
dtype0
�
group_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namegroup_normalization_1/gamma
�
/group_normalization_1/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization_1/gamma*
_output_shapes
: *
dtype0
�
group_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namegroup_normalization/beta
�
,group_normalization/beta/Read/ReadVariableOpReadVariableOpgroup_normalization/beta*
_output_shapes
:*
dtype0
�
group_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namegroup_normalization/gamma
�
-group_normalization/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization/gamma*
_output_shapes
:*
dtype0
�
$serving_default_module_wrapper_inputPlaceholder*/
_output_shapes
:���������@@*
dtype0*$
shape:���������@@
�
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/biasgroup_normalization/gammagroup_normalization/beta module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/biasgroup_normalization_1/gammagroup_normalization_1/beta(module_wrapper_6/conv2d_transpose/kernel&module_wrapper_6/conv2d_transpose/biasgroup_normalization_2/gammagroup_normalization_2/beta module_wrapper_8/conv2d_2/kernelmodule_wrapper_8/conv2d_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_25480

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
valueݗBٗ Bї
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_module*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
	#gamma
$beta*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_module* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_module*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
	9gamma
:beta*
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_module* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H_module* 
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_module* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_module*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
	]gamma
^beta*
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
e_module* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_module*
j
m0
n1
#2
$3
o4
p5
96
:7
q8
r9
]10
^11
s12
t13*
j
m0
n1
#2
$3
o4
p5
96
:7
q8
r9
]10
^11
s12
t13*
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate#m�$m�9m�:m�]m�^m�mm�nm�om�pm�qm�rm�sm�tm�#v�$v�9v�:v�]v�^v�mv�nv�ov�pv�qv�rv�sv�tv�*

�serving_default* 

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

mkernel
nbias*

#0
$1*

#0
$1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
hb
VARIABLE_VALUEgroup_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEgroup_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 

o0
p1*

o0
p1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

okernel
pbias*

90
:1*

90
:1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
jd
VARIABLE_VALUEgroup_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEgroup_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias*

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
jd
VARIABLE_VALUEgroup_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEgroup_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias*
\V
VARIABLE_VALUEmodule_wrapper/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmodule_wrapper/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE module_wrapper_2/conv2d_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEmodule_wrapper_2/conv2d_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE(module_wrapper_6/conv2d_transpose/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&module_wrapper_6/conv2d_transpose/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE module_wrapper_8/conv2d_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmodule_wrapper_8/conv2d_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

�0
�1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
m0
n1*

m0
n1*
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
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

o0
p1*

o0
p1*
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
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
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
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
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
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

q0
r1*

q0
r1*
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
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
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
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

s0
t1*

s0
t1*
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
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

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
��
VARIABLE_VALUE Adam/group_normalization/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/group_normalization/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/group_normalization_1/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/group_normalization_1/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/group_normalization_2/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/group_normalization_2/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_1/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE/Adam/module_wrapper_6/conv2d_transpose/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-Adam/module_wrapper_6/conv2d_transpose/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUE'Adam/module_wrapper_8/conv2d_2/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE%Adam/module_wrapper_8/conv2d_2/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/group_normalization/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/group_normalization/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/group_normalization_1/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/group_normalization_1/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/group_normalization_2/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/group_normalization_2/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_1/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE/Adam/module_wrapper_6/conv2d_transpose/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-Adam/module_wrapper_6/conv2d_transpose/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUE'Adam/module_wrapper_8/conv2d_2/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE%Adam/module_wrapper_8/conv2d_2/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-group_normalization/gamma/Read/ReadVariableOp,group_normalization/beta/Read/ReadVariableOp/group_normalization_1/gamma/Read/ReadVariableOp.group_normalization_1/beta/Read/ReadVariableOp/group_normalization_2/gamma/Read/ReadVariableOp.group_normalization_2/beta/Read/ReadVariableOp0module_wrapper/conv2d/kernel/Read/ReadVariableOp.module_wrapper/conv2d/bias/Read/ReadVariableOp4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOp2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOp<module_wrapper_6/conv2d_transpose/kernel/Read/ReadVariableOp:module_wrapper_6/conv2d_transpose/bias/Read/ReadVariableOp4module_wrapper_8/conv2d_2/kernel/Read/ReadVariableOp2module_wrapper_8/conv2d_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4Adam/group_normalization/gamma/m/Read/ReadVariableOp3Adam/group_normalization/beta/m/Read/ReadVariableOp6Adam/group_normalization_1/gamma/m/Read/ReadVariableOp5Adam/group_normalization_1/beta/m/Read/ReadVariableOp6Adam/group_normalization_2/gamma/m/Read/ReadVariableOp5Adam/group_normalization_2/beta/m/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_1/bias/m/Read/ReadVariableOpCAdam/module_wrapper_6/conv2d_transpose/kernel/m/Read/ReadVariableOpAAdam/module_wrapper_6/conv2d_transpose/bias/m/Read/ReadVariableOp;Adam/module_wrapper_8/conv2d_2/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_8/conv2d_2/bias/m/Read/ReadVariableOp4Adam/group_normalization/gamma/v/Read/ReadVariableOp3Adam/group_normalization/beta/v/Read/ReadVariableOp6Adam/group_normalization_1/gamma/v/Read/ReadVariableOp5Adam/group_normalization_1/beta/v/Read/ReadVariableOp6Adam/group_normalization_2/gamma/v/Read/ReadVariableOp5Adam/group_normalization_2/beta/v/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_1/bias/v/Read/ReadVariableOpCAdam/module_wrapper_6/conv2d_transpose/kernel/v/Read/ReadVariableOpAAdam/module_wrapper_6/conv2d_transpose/bias/v/Read/ReadVariableOp;Adam/module_wrapper_8/conv2d_2/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_8/conv2d_2/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_26542
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamegroup_normalization/gammagroup_normalization/betagroup_normalization_1/gammagroup_normalization_1/betagroup_normalization_2/gammagroup_normalization_2/betamodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/bias(module_wrapper_6/conv2d_transpose/kernel&module_wrapper_6/conv2d_transpose/bias module_wrapper_8/conv2d_2/kernelmodule_wrapper_8/conv2d_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount Adam/group_normalization/gamma/mAdam/group_normalization/beta/m"Adam/group_normalization_1/gamma/m!Adam/group_normalization_1/beta/m"Adam/group_normalization_2/gamma/m!Adam/group_normalization_2/beta/m#Adam/module_wrapper/conv2d/kernel/m!Adam/module_wrapper/conv2d/bias/m'Adam/module_wrapper_2/conv2d_1/kernel/m%Adam/module_wrapper_2/conv2d_1/bias/m/Adam/module_wrapper_6/conv2d_transpose/kernel/m-Adam/module_wrapper_6/conv2d_transpose/bias/m'Adam/module_wrapper_8/conv2d_2/kernel/m%Adam/module_wrapper_8/conv2d_2/bias/m Adam/group_normalization/gamma/vAdam/group_normalization/beta/v"Adam/group_normalization_1/gamma/v!Adam/group_normalization_1/beta/v"Adam/group_normalization_2/gamma/v!Adam/group_normalization_2/beta/v#Adam/module_wrapper/conv2d/kernel/v!Adam/module_wrapper/conv2d/bias/v'Adam/module_wrapper_2/conv2d_1/kernel/v%Adam/module_wrapper_2/conv2d_1/bias/v/Adam/module_wrapper_6/conv2d_transpose/kernel/v-Adam/module_wrapper_6/conv2d_transpose/bias/v'Adam/module_wrapper_8/conv2d_2/kernel/v%Adam/module_wrapper_8/conv2d_2/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_26705��
�
�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24930

args_0A
'conv2d_2_conv2d_readvariableop_resource:@6
(conv2d_2_biasadd_readvariableop_resource:
identity��conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@p
conv2d_2/SigmoidSigmoidconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@k
IdentityIdentityconv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26094

args_0
identity[
activation_1/ReluReluargs_0*
T0*/
_output_shapes
:���������@@ o
IdentityIdentityactivation_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26141

args_0
identity[
activation_2/ReluReluargs_0*
T0*/
_output_shapes
:���������   o
IdentityIdentityactivation_2/Relu:activations:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_26120

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_24917

args_0
identity[
activation_3/ReluReluargs_0*
T0*/
_output_shapes
:���������@@@o
IdentityIdentityactivation_3/Relu:activations:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
�
.__inference_module_wrapper_layer_call_fn_25892

args_0!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25201w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26210

args_0S
9conv2d_transpose_conv2d_transpose_readvariableop_resource:@ >
0conv2d_transpose_biasadd_readvariableop_resource:@
identity��'conv2d_transpose/BiasAdd/ReadVariableOp�0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@x
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25984

args_0
identityY
activation/ReluReluargs_0*
T0*/
_output_shapes
:���������@@m
IdentityIdentityactivation/Relu:activations:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_4_layer_call_fn_26104

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25095h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_3_layer_call_fn_26084

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25111h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
�
.__inference_module_wrapper_layer_call_fn_25883

args_0!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24686w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24818

args_0
identity[
activation_1/ReluReluargs_0*
T0*/
_output_shapes
:���������@@ o
IdentityIdentityactivation_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_5_layer_call_fn_26131

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24832h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26022

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity��conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ p
IdentityIdentityconv2d_1/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@ �
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@n
IdentityIdentityconv2d/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
5__inference_group_normalization_1_layer_call_fn_26031

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_24807w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs
�:
�
E__inference_sequential_layer_call_and_return_conditional_losses_25287

inputs.
module_wrapper_25246:"
module_wrapper_25248:'
group_normalization_25251:'
group_normalization_25253:0
module_wrapper_2_25257: $
module_wrapper_2_25259: )
group_normalization_1_25262: )
group_normalization_1_25264: 0
module_wrapper_6_25270:@ $
module_wrapper_6_25272:@)
group_normalization_2_25275:@)
group_normalization_2_25277:@0
module_wrapper_8_25281:@$
module_wrapper_8_25283:
identity��+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�-group_normalization_2/StatefulPartitionedCall�&module_wrapper/StatefulPartitionedCall�(module_wrapper_2/StatefulPartitionedCall�(module_wrapper_6/StatefulPartitionedCall�(module_wrapper_8/StatefulPartitionedCall�
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_25246module_wrapper_25248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25201�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0group_normalization_25251group_normalization_25253*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_group_normalization_layer_call_and_return_conditional_losses_24735�
 module_wrapper_1/PartitionedCallPartitionedCall4group_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25166�
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_25257module_wrapper_2_25259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25146�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0group_normalization_1_25262group_normalization_1_25264*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_24807�
 module_wrapper_3/PartitionedCallPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25111�
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25095�
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_25079�
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_25270module_wrapper_6_25272*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_25059�
-group_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0group_normalization_2_25275group_normalization_2_25277*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_24906�
 module_wrapper_7/PartitionedCallPartitionedCall6group_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_25011�
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_7/PartitionedCall:output:0module_wrapper_8_25281module_wrapper_8_25283*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24991�
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall.^group_normalization_2/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall2^
-group_normalization_2/StatefulPartitionedCall-group_normalization_2/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�:
�
E__inference_sequential_layer_call_and_return_conditional_losses_25395
module_wrapper_input.
module_wrapper_25354:"
module_wrapper_25356:'
group_normalization_25359:'
group_normalization_25361:0
module_wrapper_2_25365: $
module_wrapper_2_25367: )
group_normalization_1_25370: )
group_normalization_1_25372: 0
module_wrapper_6_25378:@ $
module_wrapper_6_25380:@)
group_normalization_2_25383:@)
group_normalization_2_25385:@0
module_wrapper_8_25389:@$
module_wrapper_8_25391:
identity��+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�-group_normalization_2/StatefulPartitionedCall�&module_wrapper/StatefulPartitionedCall�(module_wrapper_2/StatefulPartitionedCall�(module_wrapper_6/StatefulPartitionedCall�(module_wrapper_8/StatefulPartitionedCall�
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_25354module_wrapper_25356*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24686�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0group_normalization_25359group_normalization_25361*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_group_normalization_layer_call_and_return_conditional_losses_24735�
 module_wrapper_1/PartitionedCallPartitionedCall4group_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24746�
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_25365module_wrapper_2_25367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24758�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0group_normalization_1_25370group_normalization_1_25372*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_24807�
 module_wrapper_3/PartitionedCallPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24818�
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24825�
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24832�
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_25378module_wrapper_6_25380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24857�
-group_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0group_normalization_2_25383group_normalization_2_25385*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_24906�
 module_wrapper_7/PartitionedCallPartitionedCall6group_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_24917�
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_7/PartitionedCall:output:0module_wrapper_8_25389module_wrapper_8_25391*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24930�
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall.^group_normalization_2/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall2^
-group_normalization_2/StatefulPartitionedCall-group_normalization_2/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:e a
/
_output_shapes
:���������@@
.
_user_specified_namemodule_wrapper_input
�
�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24758

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity��conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ p
IdentityIdentityconv2d_1/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@ �
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
��
�$
!__inference__traced_restore_26705
file_prefix8
*assignvariableop_group_normalization_gamma:9
+assignvariableop_1_group_normalization_beta:<
.assignvariableop_2_group_normalization_1_gamma: ;
-assignvariableop_3_group_normalization_1_beta: <
.assignvariableop_4_group_normalization_2_gamma:@;
-assignvariableop_5_group_normalization_2_beta:@I
/assignvariableop_6_module_wrapper_conv2d_kernel:;
-assignvariableop_7_module_wrapper_conv2d_bias:M
3assignvariableop_8_module_wrapper_2_conv2d_1_kernel: ?
1assignvariableop_9_module_wrapper_2_conv2d_1_bias: V
<assignvariableop_10_module_wrapper_6_conv2d_transpose_kernel:@ H
:assignvariableop_11_module_wrapper_6_conv2d_transpose_bias:@N
4assignvariableop_12_module_wrapper_8_conv2d_2_kernel:@@
2assignvariableop_13_module_wrapper_8_conv2d_2_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: B
4assignvariableop_23_adam_group_normalization_gamma_m:A
3assignvariableop_24_adam_group_normalization_beta_m:D
6assignvariableop_25_adam_group_normalization_1_gamma_m: C
5assignvariableop_26_adam_group_normalization_1_beta_m: D
6assignvariableop_27_adam_group_normalization_2_gamma_m:@C
5assignvariableop_28_adam_group_normalization_2_beta_m:@Q
7assignvariableop_29_adam_module_wrapper_conv2d_kernel_m:C
5assignvariableop_30_adam_module_wrapper_conv2d_bias_m:U
;assignvariableop_31_adam_module_wrapper_2_conv2d_1_kernel_m: G
9assignvariableop_32_adam_module_wrapper_2_conv2d_1_bias_m: ]
Cassignvariableop_33_adam_module_wrapper_6_conv2d_transpose_kernel_m:@ O
Aassignvariableop_34_adam_module_wrapper_6_conv2d_transpose_bias_m:@U
;assignvariableop_35_adam_module_wrapper_8_conv2d_2_kernel_m:@G
9assignvariableop_36_adam_module_wrapper_8_conv2d_2_bias_m:B
4assignvariableop_37_adam_group_normalization_gamma_v:A
3assignvariableop_38_adam_group_normalization_beta_v:D
6assignvariableop_39_adam_group_normalization_1_gamma_v: C
5assignvariableop_40_adam_group_normalization_1_beta_v: D
6assignvariableop_41_adam_group_normalization_2_gamma_v:@C
5assignvariableop_42_adam_group_normalization_2_beta_v:@Q
7assignvariableop_43_adam_module_wrapper_conv2d_kernel_v:C
5assignvariableop_44_adam_module_wrapper_conv2d_bias_v:U
;assignvariableop_45_adam_module_wrapper_2_conv2d_1_kernel_v: G
9assignvariableop_46_adam_module_wrapper_2_conv2d_1_bias_v: ]
Cassignvariableop_47_adam_module_wrapper_6_conv2d_transpose_kernel_v:@ O
Aassignvariableop_48_adam_module_wrapper_6_conv2d_transpose_bias_v:@U
;assignvariableop_49_adam_module_wrapper_8_conv2d_2_kernel_v:@G
9assignvariableop_50_adam_module_wrapper_8_conv2d_2_bias_v:
identity_52��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_group_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_group_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_group_normalization_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_group_normalization_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_group_normalization_2_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp-assignvariableop_5_group_normalization_2_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_module_wrapper_conv2d_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_module_wrapper_conv2d_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp3assignvariableop_8_module_wrapper_2_conv2d_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp1assignvariableop_9_module_wrapper_2_conv2d_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp<assignvariableop_10_module_wrapper_6_conv2d_transpose_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_module_wrapper_6_conv2d_transpose_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp4assignvariableop_12_module_wrapper_8_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp2assignvariableop_13_module_wrapper_8_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_group_normalization_gamma_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp3assignvariableop_24_adam_group_normalization_beta_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_group_normalization_1_gamma_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp5assignvariableop_26_adam_group_normalization_1_beta_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_group_normalization_2_gamma_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp5assignvariableop_28_adam_group_normalization_2_beta_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adam_module_wrapper_conv2d_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp5assignvariableop_30_adam_module_wrapper_conv2d_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp;assignvariableop_31_adam_module_wrapper_2_conv2d_1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp9assignvariableop_32_adam_module_wrapper_2_conv2d_1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpCassignvariableop_33_adam_module_wrapper_6_conv2d_transpose_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpAassignvariableop_34_adam_module_wrapper_6_conv2d_transpose_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp;assignvariableop_35_adam_module_wrapper_8_conv2d_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp9assignvariableop_36_adam_module_wrapper_8_conv2d_2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_group_normalization_gamma_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp3assignvariableop_38_adam_group_normalization_beta_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_group_normalization_1_gamma_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_group_normalization_1_beta_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_group_normalization_2_gamma_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adam_group_normalization_2_beta_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_module_wrapper_conv2d_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adam_module_wrapper_conv2d_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp;assignvariableop_45_adam_module_wrapper_2_conv2d_1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp9assignvariableop_46_adam_module_wrapper_2_conv2d_1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpCassignvariableop_47_adam_module_wrapper_6_conv2d_transpose_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpAassignvariableop_48_adam_module_wrapper_6_conv2d_transpose_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp;assignvariableop_49_adam_module_wrapper_8_conv2d_2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp9assignvariableop_50_adam_module_wrapper_8_conv2d_2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26366

args_0A
'conv2d_2_conv2d_readvariableop_resource:@6
(conv2d_2_biasadd_readvariableop_resource:
identity��conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@p
conv2d_2/SigmoidSigmoidconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@k
IdentityIdentityconv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�m
�
__inference__traced_save_26542
file_prefix8
4savev2_group_normalization_gamma_read_readvariableop7
3savev2_group_normalization_beta_read_readvariableop:
6savev2_group_normalization_1_gamma_read_readvariableop9
5savev2_group_normalization_1_beta_read_readvariableop:
6savev2_group_normalization_2_gamma_read_readvariableop9
5savev2_group_normalization_2_beta_read_readvariableop;
7savev2_module_wrapper_conv2d_kernel_read_readvariableop9
5savev2_module_wrapper_conv2d_bias_read_readvariableop?
;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop=
9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableopG
Csavev2_module_wrapper_6_conv2d_transpose_kernel_read_readvariableopE
Asavev2_module_wrapper_6_conv2d_transpose_bias_read_readvariableop?
;savev2_module_wrapper_8_conv2d_2_kernel_read_readvariableop=
9savev2_module_wrapper_8_conv2d_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_adam_group_normalization_gamma_m_read_readvariableop>
:savev2_adam_group_normalization_beta_m_read_readvariableopA
=savev2_adam_group_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_group_normalization_1_beta_m_read_readvariableopA
=savev2_adam_group_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_group_normalization_2_beta_m_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_1_bias_m_read_readvariableopN
Jsavev2_adam_module_wrapper_6_conv2d_transpose_kernel_m_read_readvariableopL
Hsavev2_adam_module_wrapper_6_conv2d_transpose_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_8_conv2d_2_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_8_conv2d_2_bias_m_read_readvariableop?
;savev2_adam_group_normalization_gamma_v_read_readvariableop>
:savev2_adam_group_normalization_beta_v_read_readvariableopA
=savev2_adam_group_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_group_normalization_1_beta_v_read_readvariableopA
=savev2_adam_group_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_group_normalization_2_beta_v_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_1_bias_v_read_readvariableopN
Jsavev2_adam_module_wrapper_6_conv2d_transpose_kernel_v_read_readvariableopL
Hsavev2_adam_module_wrapper_6_conv2d_transpose_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_8_conv2d_2_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_8_conv2d_2_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_group_normalization_gamma_read_readvariableop3savev2_group_normalization_beta_read_readvariableop6savev2_group_normalization_1_gamma_read_readvariableop5savev2_group_normalization_1_beta_read_readvariableop6savev2_group_normalization_2_gamma_read_readvariableop5savev2_group_normalization_2_beta_read_readvariableop7savev2_module_wrapper_conv2d_kernel_read_readvariableop5savev2_module_wrapper_conv2d_bias_read_readvariableop;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableopCsavev2_module_wrapper_6_conv2d_transpose_kernel_read_readvariableopAsavev2_module_wrapper_6_conv2d_transpose_bias_read_readvariableop;savev2_module_wrapper_8_conv2d_2_kernel_read_readvariableop9savev2_module_wrapper_8_conv2d_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_adam_group_normalization_gamma_m_read_readvariableop:savev2_adam_group_normalization_beta_m_read_readvariableop=savev2_adam_group_normalization_1_gamma_m_read_readvariableop<savev2_adam_group_normalization_1_beta_m_read_readvariableop=savev2_adam_group_normalization_2_gamma_m_read_readvariableop<savev2_adam_group_normalization_2_beta_m_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_1_bias_m_read_readvariableopJsavev2_adam_module_wrapper_6_conv2d_transpose_kernel_m_read_readvariableopHsavev2_adam_module_wrapper_6_conv2d_transpose_bias_m_read_readvariableopBsavev2_adam_module_wrapper_8_conv2d_2_kernel_m_read_readvariableop@savev2_adam_module_wrapper_8_conv2d_2_bias_m_read_readvariableop;savev2_adam_group_normalization_gamma_v_read_readvariableop:savev2_adam_group_normalization_beta_v_read_readvariableop=savev2_adam_group_normalization_1_gamma_v_read_readvariableop<savev2_adam_group_normalization_1_beta_v_read_readvariableop=savev2_adam_group_normalization_2_gamma_v_read_readvariableop<savev2_adam_group_normalization_2_beta_v_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_1_bias_v_read_readvariableopJsavev2_adam_module_wrapper_6_conv2d_transpose_kernel_v_read_readvariableopHsavev2_adam_module_wrapper_6_conv2d_transpose_bias_v_read_readvariableopBsavev2_adam_module_wrapper_8_conv2d_2_kernel_v_read_readvariableop@savev2_adam_module_wrapper_8_conv2d_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: : :@:@::: : :@ :@:@:: : : : : : : : : ::: : :@:@::: : :@ :@:@:::: : :@:@::: : :@ :@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
: : !

_output_shapes
: :,"(
&
_output_shapes
:@ : #

_output_shapes
:@:,$(
&
_output_shapes
:@: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
:: (

_output_shapes
: : )

_output_shapes
: : *

_output_shapes
:@: +

_output_shapes
:@:,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
: : /

_output_shapes
: :,0(
&
_output_shapes
:@ : 1

_output_shapes
:@:,2(
&
_output_shapes
:@: 3

_output_shapes
::4

_output_shapes
: 
�
�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24686

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@n
IdentityIdentityconv2d/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
� 
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_26244

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
L
0__inference_module_wrapper_4_layer_call_fn_26099

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24825h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
�
0__inference_module_wrapper_2_layer_call_fn_26002

args_0!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25146w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25902

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@n
IdentityIdentityconv2d/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26146

args_0
identity[
activation_2/ReluReluargs_0*
T0*/
_output_shapes
:���������   o
IdentityIdentityactivation_2/Relu:activations:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�)
�
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_26074

inputs-
reshape_readvariableop_resource: /
!reshape_1_readvariableop_resource: 
identity��Reshape/ReadVariableOp�Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(u
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:��������� �
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@ s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(r
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
: *
dtype0f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
: v
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
: *
dtype0h
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
: T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:��������� e
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:��������� u
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:��������� k
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@ z
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:��������� w
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:��������� z
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@ j
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:���������@@ z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@ : : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs
�)
�
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_26306

inputs-
reshape_readvariableop_resource:@/
!reshape_1_readvariableop_resource:@
identity��Reshape/ReadVariableOp�Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(u
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:���������@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(r
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:@*
dtype0f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   {
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:@v
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype0h
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:@T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������@e
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:���������@u
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:���������@k
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@@z
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@w
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������@z
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@@j
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:���������@@@z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25166

args_0
identityY
activation/ReluReluargs_0*
T0*/
_output_shapes
:���������@@m
IdentityIdentityactivation/Relu:activations:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25146

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity��conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ p
IdentityIdentityconv2d_1/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@ �
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24825

args_0
identity�
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26355

args_0A
'conv2d_2_conv2d_readvariableop_resource:@6
(conv2d_2_biasadd_readvariableop_resource:
identity��conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@p
conv2d_2/SigmoidSigmoidconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@k
IdentityIdentityconv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
�
*__inference_sequential_layer_call_fn_25351
module_wrapper_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:@ 
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25287w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:���������@@
.
_user_specified_namemodule_wrapper_input
�
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26321

args_0
identity[
activation_3/ReluReluargs_0*
T0*/
_output_shapes
:���������@@@o
IdentityIdentityactivation_3/Relu:activations:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26326

args_0
identity[
activation_3/ReluReluargs_0*
T0*/
_output_shapes
:���������@@@o
IdentityIdentityactivation_3/Relu:activations:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
��
�
 __inference__wrapped_model_24669
module_wrapper_inputY
?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource:N
@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource:L
>sequential_group_normalization_reshape_readvariableop_resource:N
@sequential_group_normalization_reshape_1_readvariableop_resource:]
Csequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource: R
Dsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: N
@sequential_group_normalization_1_reshape_readvariableop_resource: P
Bsequential_group_normalization_1_reshape_1_readvariableop_resource: o
Usequential_module_wrapper_6_conv2d_transpose_conv2d_transpose_readvariableop_resource:@ Z
Lsequential_module_wrapper_6_conv2d_transpose_biasadd_readvariableop_resource:@N
@sequential_group_normalization_2_reshape_readvariableop_resource:@P
Bsequential_group_normalization_2_reshape_1_readvariableop_resource:@]
Csequential_module_wrapper_8_conv2d_2_conv2d_readvariableop_resource:@R
Dsequential_module_wrapper_8_conv2d_2_biasadd_readvariableop_resource:
identity��5sequential/group_normalization/Reshape/ReadVariableOp�7sequential/group_normalization/Reshape_1/ReadVariableOp�7sequential/group_normalization_1/Reshape/ReadVariableOp�9sequential/group_normalization_1/Reshape_1/ReadVariableOp�7sequential/group_normalization_2/Reshape/ReadVariableOp�9sequential/group_normalization_2/Reshape_1/ReadVariableOp�7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp�6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp�;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp�:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp�Csequential/module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp�Lsequential/module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp�;sequential/module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp�:sequential/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp�
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
'sequential/module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input>sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(sequential/module_wrapper/conv2d/BiasAddBiasAdd0sequential/module_wrapper/conv2d/Conv2D:output:0?sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
$sequential/group_normalization/ShapeShape1sequential/module_wrapper/conv2d/BiasAdd:output:0*
T0*
_output_shapes
:|
2sequential/group_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential/group_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential/group_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential/group_normalization/strided_sliceStridedSlice-sequential/group_normalization/Shape:output:0;sequential/group_normalization/strided_slice/stack:output:0=sequential/group_normalization/strided_slice/stack_1:output:0=sequential/group_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4sequential/group_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential/group_normalization/strided_slice_1StridedSlice-sequential/group_normalization/Shape:output:0=sequential/group_normalization/strided_slice_1/stack:output:0?sequential/group_normalization/strided_slice_1/stack_1:output:0?sequential/group_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4sequential/group_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential/group_normalization/strided_slice_2StridedSlice-sequential/group_normalization/Shape:output:0=sequential/group_normalization/strided_slice_2/stack:output:0?sequential/group_normalization/strided_slice_2/stack_1:output:0?sequential/group_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4sequential/group_normalization/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential/group_normalization/strided_slice_3StridedSlice-sequential/group_normalization/Shape:output:0=sequential/group_normalization/strided_slice_3/stack:output:0?sequential/group_normalization/strided_slice_3/stack_1:output:0?sequential/group_normalization/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
=sequential/group_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
+sequential/group_normalization/moments/meanMean1sequential/module_wrapper/conv2d/BiasAdd:output:0Fsequential/group_normalization/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(�
3sequential/group_normalization/moments/StopGradientStopGradient4sequential/group_normalization/moments/mean:output:0*
T0*/
_output_shapes
:����������
8sequential/group_normalization/moments/SquaredDifferenceSquaredDifference1sequential/module_wrapper/conv2d/BiasAdd:output:0<sequential/group_normalization/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@�
Asequential/group_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
/sequential/group_normalization/moments/varianceMean<sequential/group_normalization/moments/SquaredDifference:z:0Jsequential/group_normalization/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(�
5sequential/group_normalization/Reshape/ReadVariableOpReadVariableOp>sequential_group_normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
,sequential/group_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
&sequential/group_normalization/ReshapeReshape=sequential/group_normalization/Reshape/ReadVariableOp:value:05sequential/group_normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:�
7sequential/group_normalization/Reshape_1/ReadVariableOpReadVariableOp@sequential_group_normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype0�
.sequential/group_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
(sequential/group_normalization/Reshape_1Reshape?sequential/group_normalization/Reshape_1/ReadVariableOp:value:07sequential/group_normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:s
.sequential/group_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,sequential/group_normalization/batchnorm/addAddV28sequential/group_normalization/moments/variance:output:07sequential/group_normalization/batchnorm/add/y:output:0*
T0*/
_output_shapes
:����������
.sequential/group_normalization/batchnorm/RsqrtRsqrt0sequential/group_normalization/batchnorm/add:z:0*
T0*/
_output_shapes
:����������
,sequential/group_normalization/batchnorm/mulMul2sequential/group_normalization/batchnorm/Rsqrt:y:0/sequential/group_normalization/Reshape:output:0*
T0*/
_output_shapes
:����������
.sequential/group_normalization/batchnorm/mul_1Mul1sequential/module_wrapper/conv2d/BiasAdd:output:00sequential/group_normalization/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@�
.sequential/group_normalization/batchnorm/mul_2Mul4sequential/group_normalization/moments/mean:output:00sequential/group_normalization/batchnorm/mul:z:0*
T0*/
_output_shapes
:����������
,sequential/group_normalization/batchnorm/subSub1sequential/group_normalization/Reshape_1:output:02sequential/group_normalization/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:����������
.sequential/group_normalization/batchnorm/add_1AddV22sequential/group_normalization/batchnorm/mul_1:z:00sequential/group_normalization/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@�
+sequential/module_wrapper_1/activation/ReluRelu2sequential/group_normalization/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@�
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
+sequential/module_wrapper_2/conv2d_1/Conv2DConv2D9sequential/module_wrapper_1/activation/Relu:activations:0Bsequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
,sequential/module_wrapper_2/conv2d_1/BiasAddBiasAdd4sequential/module_wrapper_2/conv2d_1/Conv2D:output:0Csequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
&sequential/group_normalization_1/ShapeShape5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:~
4sequential/group_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6sequential/group_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential/group_normalization_1/strided_sliceStridedSlice/sequential/group_normalization_1/Shape:output:0=sequential/group_normalization_1/strided_slice/stack:output:0?sequential/group_normalization_1/strided_slice/stack_1:output:0?sequential/group_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6sequential/group_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/group_normalization_1/strided_slice_1StridedSlice/sequential/group_normalization_1/Shape:output:0?sequential/group_normalization_1/strided_slice_1/stack:output:0Asequential/group_normalization_1/strided_slice_1/stack_1:output:0Asequential/group_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6sequential/group_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/group_normalization_1/strided_slice_2StridedSlice/sequential/group_normalization_1/Shape:output:0?sequential/group_normalization_1/strided_slice_2/stack:output:0Asequential/group_normalization_1/strided_slice_2/stack_1:output:0Asequential/group_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6sequential/group_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/group_normalization_1/strided_slice_3StridedSlice/sequential/group_normalization_1/Shape:output:0?sequential/group_normalization_1/strided_slice_3/stack:output:0Asequential/group_normalization_1/strided_slice_3/stack_1:output:0Asequential/group_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?sequential/group_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
-sequential/group_normalization_1/moments/meanMean5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:0Hsequential/group_normalization_1/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(�
5sequential/group_normalization_1/moments/StopGradientStopGradient6sequential/group_normalization_1/moments/mean:output:0*
T0*/
_output_shapes
:��������� �
:sequential/group_normalization_1/moments/SquaredDifferenceSquaredDifference5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:0>sequential/group_normalization_1/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@ �
Csequential/group_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
1sequential/group_normalization_1/moments/varianceMean>sequential/group_normalization_1/moments/SquaredDifference:z:0Lsequential/group_normalization_1/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(�
7sequential/group_normalization_1/Reshape/ReadVariableOpReadVariableOp@sequential_group_normalization_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
.sequential/group_normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
(sequential/group_normalization_1/ReshapeReshape?sequential/group_normalization_1/Reshape/ReadVariableOp:value:07sequential/group_normalization_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
9sequential/group_normalization_1/Reshape_1/ReadVariableOpReadVariableOpBsequential_group_normalization_1_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype0�
0sequential/group_normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
*sequential/group_normalization_1/Reshape_1ReshapeAsequential/group_normalization_1/Reshape_1/ReadVariableOp:value:09sequential/group_normalization_1/Reshape_1/shape:output:0*
T0*&
_output_shapes
: u
0sequential/group_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
.sequential/group_normalization_1/batchnorm/addAddV2:sequential/group_normalization_1/moments/variance:output:09sequential/group_normalization_1/batchnorm/add/y:output:0*
T0*/
_output_shapes
:��������� �
0sequential/group_normalization_1/batchnorm/RsqrtRsqrt2sequential/group_normalization_1/batchnorm/add:z:0*
T0*/
_output_shapes
:��������� �
.sequential/group_normalization_1/batchnorm/mulMul4sequential/group_normalization_1/batchnorm/Rsqrt:y:01sequential/group_normalization_1/Reshape:output:0*
T0*/
_output_shapes
:��������� �
0sequential/group_normalization_1/batchnorm/mul_1Mul5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:02sequential/group_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@ �
0sequential/group_normalization_1/batchnorm/mul_2Mul6sequential/group_normalization_1/moments/mean:output:02sequential/group_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:��������� �
.sequential/group_normalization_1/batchnorm/subSub3sequential/group_normalization_1/Reshape_1:output:04sequential/group_normalization_1/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:��������� �
0sequential/group_normalization_1/batchnorm/add_1AddV24sequential/group_normalization_1/batchnorm/mul_1:z:02sequential/group_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@ �
-sequential/module_wrapper_3/activation_1/ReluRelu4sequential/group_normalization_1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@ �
1sequential/module_wrapper_4/max_pooling2d/MaxPoolMaxPool;sequential/module_wrapper_3/activation_1/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
�
-sequential/module_wrapper_5/activation_2/ReluRelu:sequential/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   �
2sequential/module_wrapper_6/conv2d_transpose/ShapeShape;sequential/module_wrapper_5/activation_2/Relu:activations:0*
T0*
_output_shapes
:�
@sequential/module_wrapper_6/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Bsequential/module_wrapper_6/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential/module_wrapper_6/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:sequential/module_wrapper_6/conv2d_transpose/strided_sliceStridedSlice;sequential/module_wrapper_6/conv2d_transpose/Shape:output:0Isequential/module_wrapper_6/conv2d_transpose/strided_slice/stack:output:0Ksequential/module_wrapper_6/conv2d_transpose/strided_slice/stack_1:output:0Ksequential/module_wrapper_6/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4sequential/module_wrapper_6/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@v
4sequential/module_wrapper_6/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@v
4sequential/module_wrapper_6/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
2sequential/module_wrapper_6/conv2d_transpose/stackPackCsequential/module_wrapper_6/conv2d_transpose/strided_slice:output:0=sequential/module_wrapper_6/conv2d_transpose/stack/1:output:0=sequential/module_wrapper_6/conv2d_transpose/stack/2:output:0=sequential/module_wrapper_6/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:�
Bsequential/module_wrapper_6/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Dsequential/module_wrapper_6/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential/module_wrapper_6/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential/module_wrapper_6/conv2d_transpose/strided_slice_1StridedSlice;sequential/module_wrapper_6/conv2d_transpose/stack:output:0Ksequential/module_wrapper_6/conv2d_transpose/strided_slice_1/stack:output:0Msequential/module_wrapper_6/conv2d_transpose/strided_slice_1/stack_1:output:0Msequential/module_wrapper_6/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Lsequential/module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpUsequential_module_wrapper_6_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
=sequential/module_wrapper_6/conv2d_transpose/conv2d_transposeConv2DBackpropInput;sequential/module_wrapper_6/conv2d_transpose/stack:output:0Tsequential/module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0;sequential/module_wrapper_5/activation_2/Relu:activations:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
Csequential/module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpLsequential_module_wrapper_6_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
4sequential/module_wrapper_6/conv2d_transpose/BiasAddBiasAddFsequential/module_wrapper_6/conv2d_transpose/conv2d_transpose:output:0Ksequential/module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@�
&sequential/group_normalization_2/ShapeShape=sequential/module_wrapper_6/conv2d_transpose/BiasAdd:output:0*
T0*
_output_shapes
:~
4sequential/group_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6sequential/group_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential/group_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential/group_normalization_2/strided_sliceStridedSlice/sequential/group_normalization_2/Shape:output:0=sequential/group_normalization_2/strided_slice/stack:output:0?sequential/group_normalization_2/strided_slice/stack_1:output:0?sequential/group_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6sequential/group_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/group_normalization_2/strided_slice_1StridedSlice/sequential/group_normalization_2/Shape:output:0?sequential/group_normalization_2/strided_slice_1/stack:output:0Asequential/group_normalization_2/strided_slice_1/stack_1:output:0Asequential/group_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6sequential/group_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/group_normalization_2/strided_slice_2StridedSlice/sequential/group_normalization_2/Shape:output:0?sequential/group_normalization_2/strided_slice_2/stack:output:0Asequential/group_normalization_2/strided_slice_2/stack_1:output:0Asequential/group_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6sequential/group_normalization_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/group_normalization_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0sequential/group_normalization_2/strided_slice_3StridedSlice/sequential/group_normalization_2/Shape:output:0?sequential/group_normalization_2/strided_slice_3/stack:output:0Asequential/group_normalization_2/strided_slice_3/stack_1:output:0Asequential/group_normalization_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?sequential/group_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
-sequential/group_normalization_2/moments/meanMean=sequential/module_wrapper_6/conv2d_transpose/BiasAdd:output:0Hsequential/group_normalization_2/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(�
5sequential/group_normalization_2/moments/StopGradientStopGradient6sequential/group_normalization_2/moments/mean:output:0*
T0*/
_output_shapes
:���������@�
:sequential/group_normalization_2/moments/SquaredDifferenceSquaredDifference=sequential/module_wrapper_6/conv2d_transpose/BiasAdd:output:0>sequential/group_normalization_2/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@@�
Csequential/group_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
1sequential/group_normalization_2/moments/varianceMean>sequential/group_normalization_2/moments/SquaredDifference:z:0Lsequential/group_normalization_2/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(�
7sequential/group_normalization_2/Reshape/ReadVariableOpReadVariableOp@sequential_group_normalization_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
.sequential/group_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
(sequential/group_normalization_2/ReshapeReshape?sequential/group_normalization_2/Reshape/ReadVariableOp:value:07sequential/group_normalization_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
9sequential/group_normalization_2/Reshape_1/ReadVariableOpReadVariableOpBsequential_group_normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0sequential/group_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
*sequential/group_normalization_2/Reshape_1ReshapeAsequential/group_normalization_2/Reshape_1/ReadVariableOp:value:09sequential/group_normalization_2/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@u
0sequential/group_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
.sequential/group_normalization_2/batchnorm/addAddV2:sequential/group_normalization_2/moments/variance:output:09sequential/group_normalization_2/batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������@�
0sequential/group_normalization_2/batchnorm/RsqrtRsqrt2sequential/group_normalization_2/batchnorm/add:z:0*
T0*/
_output_shapes
:���������@�
.sequential/group_normalization_2/batchnorm/mulMul4sequential/group_normalization_2/batchnorm/Rsqrt:y:01sequential/group_normalization_2/Reshape:output:0*
T0*/
_output_shapes
:���������@�
0sequential/group_normalization_2/batchnorm/mul_1Mul=sequential/module_wrapper_6/conv2d_transpose/BiasAdd:output:02sequential/group_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@@�
0sequential/group_normalization_2/batchnorm/mul_2Mul6sequential/group_normalization_2/moments/mean:output:02sequential/group_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@�
.sequential/group_normalization_2/batchnorm/subSub3sequential/group_normalization_2/Reshape_1:output:04sequential/group_normalization_2/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������@�
0sequential/group_normalization_2/batchnorm/add_1AddV24sequential/group_normalization_2/batchnorm/mul_1:z:02sequential/group_normalization_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@@�
-sequential/module_wrapper_7/activation_3/ReluRelu4sequential/group_normalization_2/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@@�
:sequential/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_8_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
+sequential/module_wrapper_8/conv2d_2/Conv2DConv2D;sequential/module_wrapper_7/activation_3/Relu:activations:0Bsequential/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
;sequential/module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_8_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,sequential/module_wrapper_8/conv2d_2/BiasAddBiasAdd4sequential/module_wrapper_8/conv2d_2/Conv2D:output:0Csequential/module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
,sequential/module_wrapper_8/conv2d_2/SigmoidSigmoid5sequential/module_wrapper_8/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
IdentityIdentity0sequential/module_wrapper_8/conv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp6^sequential/group_normalization/Reshape/ReadVariableOp8^sequential/group_normalization/Reshape_1/ReadVariableOp8^sequential/group_normalization_1/Reshape/ReadVariableOp:^sequential/group_normalization_1/Reshape_1/ReadVariableOp8^sequential/group_normalization_2/Reshape/ReadVariableOp:^sequential/group_normalization_2/Reshape_1/ReadVariableOp8^sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7^sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp<^sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpD^sequential/module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpM^sequential/module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp<^sequential/module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp;^sequential/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2n
5sequential/group_normalization/Reshape/ReadVariableOp5sequential/group_normalization/Reshape/ReadVariableOp2r
7sequential/group_normalization/Reshape_1/ReadVariableOp7sequential/group_normalization/Reshape_1/ReadVariableOp2r
7sequential/group_normalization_1/Reshape/ReadVariableOp7sequential/group_normalization_1/Reshape/ReadVariableOp2v
9sequential/group_normalization_1/Reshape_1/ReadVariableOp9sequential/group_normalization_1/Reshape_1/ReadVariableOp2r
7sequential/group_normalization_2/Reshape/ReadVariableOp7sequential/group_normalization_2/Reshape/ReadVariableOp2v
9sequential/group_normalization_2/Reshape_1/ReadVariableOp9sequential/group_normalization_2/Reshape_1/ReadVariableOp2r
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp2p
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2�
Csequential/module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpCsequential/module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp2�
Lsequential/module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOpLsequential/module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp2z
;sequential/module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp;sequential/module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:sequential/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:e a
/
_output_shapes
:���������@@
.
_user_specified_namemodule_wrapper_input
�
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24746

args_0
identityY
activation/ReluReluargs_0*
T0*/
_output_shapes
:���������@@m
IdentityIdentityactivation/Relu:activations:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
#__inference_signature_wrapper_25480
module_wrapper_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:@ 
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_24669w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:���������@@
.
_user_specified_namemodule_wrapper_input
�
g
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_25079

args_0
identity[
activation_2/ReluReluargs_0*
T0*/
_output_shapes
:���������   o
IdentityIdentityactivation_2/Relu:activations:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_25059

args_0S
9conv2d_transpose_conv2d_transpose_readvariableop_resource:@ >
0conv2d_transpose_biasadd_readvariableop_resource:@
identity��'conv2d_transpose/BiasAdd/ReadVariableOp�0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@x
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
5__inference_group_normalization_2_layer_call_fn_26263

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_24906w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
g
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24832

args_0
identity[
activation_2/ReluReluargs_0*
T0*/
_output_shapes
:���������   o
IdentityIdentityactivation_2/Relu:activations:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
0__inference_conv2d_transpose_layer_call_fn_26254

inputs!
unknown:@ 
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_26244�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_26126

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_26120�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
0__inference_module_wrapper_8_layer_call_fn_26335

args_0!
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24930w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
�
*__inference_sequential_layer_call_fn_24968
module_wrapper_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:@ 
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24937w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:���������@@
.
_user_specified_namemodule_wrapper_input
�
L
0__inference_module_wrapper_3_layer_call_fn_26079

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24818h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26114

args_0
identity�
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_7_layer_call_fn_26311

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_24917h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_25874

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:A
3group_normalization_reshape_readvariableop_resource:C
5group_normalization_reshape_1_readvariableop_resource:R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource: G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: C
5group_normalization_1_reshape_readvariableop_resource: E
7group_normalization_1_reshape_1_readvariableop_resource: d
Jmodule_wrapper_6_conv2d_transpose_conv2d_transpose_readvariableop_resource:@ O
Amodule_wrapper_6_conv2d_transpose_biasadd_readvariableop_resource:@C
5group_normalization_2_reshape_readvariableop_resource:@E
7group_normalization_2_reshape_1_readvariableop_resource:@R
8module_wrapper_8_conv2d_2_conv2d_readvariableop_resource:@G
9module_wrapper_8_conv2d_2_biasadd_readvariableop_resource:
identity��*group_normalization/Reshape/ReadVariableOp�,group_normalization/Reshape_1/ReadVariableOp�,group_normalization_1/Reshape/ReadVariableOp�.group_normalization_1/Reshape_1/ReadVariableOp�,group_normalization_2/Reshape/ReadVariableOp�.group_normalization_2/Reshape_1/ReadVariableOp�,module_wrapper/conv2d/BiasAdd/ReadVariableOp�+module_wrapper/conv2d/Conv2D/ReadVariableOp�0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp�/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp�8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp�Amodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp�0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp�/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp�
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@o
group_normalization/ShapeShape&module_wrapper/conv2d/BiasAdd:output:0*
T0*
_output_shapes
:q
'group_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)group_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)group_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!group_normalization/strided_sliceStridedSlice"group_normalization/Shape:output:00group_normalization/strided_slice/stack:output:02group_normalization/strided_slice/stack_1:output:02group_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization/strided_slice_1StridedSlice"group_normalization/Shape:output:02group_normalization/strided_slice_1/stack:output:04group_normalization/strided_slice_1/stack_1:output:04group_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization/strided_slice_2StridedSlice"group_normalization/Shape:output:02group_normalization/strided_slice_2/stack:output:04group_normalization/strided_slice_2/stack_1:output:04group_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization/strided_slice_3StridedSlice"group_normalization/Shape:output:02group_normalization/strided_slice_3/stack:output:04group_normalization/strided_slice_3/stack_1:output:04group_normalization/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2group_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
 group_normalization/moments/meanMean&module_wrapper/conv2d/BiasAdd:output:0;group_normalization/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(�
(group_normalization/moments/StopGradientStopGradient)group_normalization/moments/mean:output:0*
T0*/
_output_shapes
:����������
-group_normalization/moments/SquaredDifferenceSquaredDifference&module_wrapper/conv2d/BiasAdd:output:01group_normalization/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@�
6group_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
$group_normalization/moments/varianceMean1group_normalization/moments/SquaredDifference:z:0?group_normalization/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(�
*group_normalization/Reshape/ReadVariableOpReadVariableOp3group_normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype0z
!group_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
group_normalization/ReshapeReshape2group_normalization/Reshape/ReadVariableOp:value:0*group_normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:�
,group_normalization/Reshape_1/ReadVariableOpReadVariableOp5group_normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype0|
#group_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
group_normalization/Reshape_1Reshape4group_normalization/Reshape_1/ReadVariableOp:value:0,group_normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:h
#group_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
!group_normalization/batchnorm/addAddV2-group_normalization/moments/variance:output:0,group_normalization/batchnorm/add/y:output:0*
T0*/
_output_shapes
:����������
#group_normalization/batchnorm/RsqrtRsqrt%group_normalization/batchnorm/add:z:0*
T0*/
_output_shapes
:����������
!group_normalization/batchnorm/mulMul'group_normalization/batchnorm/Rsqrt:y:0$group_normalization/Reshape:output:0*
T0*/
_output_shapes
:����������
#group_normalization/batchnorm/mul_1Mul&module_wrapper/conv2d/BiasAdd:output:0%group_normalization/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@�
#group_normalization/batchnorm/mul_2Mul)group_normalization/moments/mean:output:0%group_normalization/batchnorm/mul:z:0*
T0*/
_output_shapes
:����������
!group_normalization/batchnorm/subSub&group_normalization/Reshape_1:output:0'group_normalization/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:����������
#group_normalization/batchnorm/add_1AddV2'group_normalization/batchnorm/mul_1:z:0%group_normalization/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@�
 module_wrapper_1/activation/ReluRelu'group_normalization/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@�
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
 module_wrapper_2/conv2d_1/Conv2DConv2D.module_wrapper_1/activation/Relu:activations:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ u
group_normalization_1/ShapeShape*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:s
)group_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization_1/strided_sliceStridedSlice$group_normalization_1/Shape:output:02group_normalization_1/strided_slice/stack:output:04group_normalization_1/strided_slice/stack_1:output:04group_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_1/strided_slice_1StridedSlice$group_normalization_1/Shape:output:04group_normalization_1/strided_slice_1/stack:output:06group_normalization_1/strided_slice_1/stack_1:output:06group_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_1/strided_slice_2StridedSlice$group_normalization_1/Shape:output:04group_normalization_1/strided_slice_2/stack:output:06group_normalization_1/strided_slice_2/stack_1:output:06group_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_1/strided_slice_3StridedSlice$group_normalization_1/Shape:output:04group_normalization_1/strided_slice_3/stack:output:06group_normalization_1/strided_slice_3/stack_1:output:06group_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4group_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
"group_normalization_1/moments/meanMean*module_wrapper_2/conv2d_1/BiasAdd:output:0=group_normalization_1/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(�
*group_normalization_1/moments/StopGradientStopGradient+group_normalization_1/moments/mean:output:0*
T0*/
_output_shapes
:��������� �
/group_normalization_1/moments/SquaredDifferenceSquaredDifference*module_wrapper_2/conv2d_1/BiasAdd:output:03group_normalization_1/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@ �
8group_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
&group_normalization_1/moments/varianceMean3group_normalization_1/moments/SquaredDifference:z:0Agroup_normalization_1/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(�
,group_normalization_1/Reshape/ReadVariableOpReadVariableOp5group_normalization_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0|
#group_normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
group_normalization_1/ReshapeReshape4group_normalization_1/Reshape/ReadVariableOp:value:0,group_normalization_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
.group_normalization_1/Reshape_1/ReadVariableOpReadVariableOp7group_normalization_1_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype0~
%group_normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
group_normalization_1/Reshape_1Reshape6group_normalization_1/Reshape_1/ReadVariableOp:value:0.group_normalization_1/Reshape_1/shape:output:0*
T0*&
_output_shapes
: j
%group_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#group_normalization_1/batchnorm/addAddV2/group_normalization_1/moments/variance:output:0.group_normalization_1/batchnorm/add/y:output:0*
T0*/
_output_shapes
:��������� �
%group_normalization_1/batchnorm/RsqrtRsqrt'group_normalization_1/batchnorm/add:z:0*
T0*/
_output_shapes
:��������� �
#group_normalization_1/batchnorm/mulMul)group_normalization_1/batchnorm/Rsqrt:y:0&group_normalization_1/Reshape:output:0*
T0*/
_output_shapes
:��������� �
%group_normalization_1/batchnorm/mul_1Mul*module_wrapper_2/conv2d_1/BiasAdd:output:0'group_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@ �
%group_normalization_1/batchnorm/mul_2Mul+group_normalization_1/moments/mean:output:0'group_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:��������� �
#group_normalization_1/batchnorm/subSub(group_normalization_1/Reshape_1:output:0)group_normalization_1/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:��������� �
%group_normalization_1/batchnorm/add_1AddV2)group_normalization_1/batchnorm/mul_1:z:0'group_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@ �
"module_wrapper_3/activation_1/ReluRelu)group_normalization_1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@ �
&module_wrapper_4/max_pooling2d/MaxPoolMaxPool0module_wrapper_3/activation_1/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
�
"module_wrapper_5/activation_2/ReluRelu/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   �
'module_wrapper_6/conv2d_transpose/ShapeShape0module_wrapper_5/activation_2/Relu:activations:0*
T0*
_output_shapes
:
5module_wrapper_6/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7module_wrapper_6/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7module_wrapper_6/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/module_wrapper_6/conv2d_transpose/strided_sliceStridedSlice0module_wrapper_6/conv2d_transpose/Shape:output:0>module_wrapper_6/conv2d_transpose/strided_slice/stack:output:0@module_wrapper_6/conv2d_transpose/strided_slice/stack_1:output:0@module_wrapper_6/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)module_wrapper_6/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@k
)module_wrapper_6/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@k
)module_wrapper_6/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
'module_wrapper_6/conv2d_transpose/stackPack8module_wrapper_6/conv2d_transpose/strided_slice:output:02module_wrapper_6/conv2d_transpose/stack/1:output:02module_wrapper_6/conv2d_transpose/stack/2:output:02module_wrapper_6/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:�
7module_wrapper_6/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9module_wrapper_6/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9module_wrapper_6/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1module_wrapper_6/conv2d_transpose/strided_slice_1StridedSlice0module_wrapper_6/conv2d_transpose/stack:output:0@module_wrapper_6/conv2d_transpose/strided_slice_1/stack:output:0Bmodule_wrapper_6/conv2d_transpose/strided_slice_1/stack_1:output:0Bmodule_wrapper_6/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Amodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpJmodule_wrapper_6_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
2module_wrapper_6/conv2d_transpose/conv2d_transposeConv2DBackpropInput0module_wrapper_6/conv2d_transpose/stack:output:0Imodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:00module_wrapper_5/activation_2/Relu:activations:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpAmodule_wrapper_6_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)module_wrapper_6/conv2d_transpose/BiasAddBiasAdd;module_wrapper_6/conv2d_transpose/conv2d_transpose:output:0@module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@}
group_normalization_2/ShapeShape2module_wrapper_6/conv2d_transpose/BiasAdd:output:0*
T0*
_output_shapes
:s
)group_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization_2/strided_sliceStridedSlice$group_normalization_2/Shape:output:02group_normalization_2/strided_slice/stack:output:04group_normalization_2/strided_slice/stack_1:output:04group_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_2/strided_slice_1StridedSlice$group_normalization_2/Shape:output:04group_normalization_2/strided_slice_1/stack:output:06group_normalization_2/strided_slice_1/stack_1:output:06group_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_2/strided_slice_2StridedSlice$group_normalization_2/Shape:output:04group_normalization_2/strided_slice_2/stack:output:06group_normalization_2/strided_slice_2/stack_1:output:06group_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_2/strided_slice_3StridedSlice$group_normalization_2/Shape:output:04group_normalization_2/strided_slice_3/stack:output:06group_normalization_2/strided_slice_3/stack_1:output:06group_normalization_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4group_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
"group_normalization_2/moments/meanMean2module_wrapper_6/conv2d_transpose/BiasAdd:output:0=group_normalization_2/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(�
*group_normalization_2/moments/StopGradientStopGradient+group_normalization_2/moments/mean:output:0*
T0*/
_output_shapes
:���������@�
/group_normalization_2/moments/SquaredDifferenceSquaredDifference2module_wrapper_6/conv2d_transpose/BiasAdd:output:03group_normalization_2/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@@�
8group_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
&group_normalization_2/moments/varianceMean3group_normalization_2/moments/SquaredDifference:z:0Agroup_normalization_2/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(�
,group_normalization_2/Reshape/ReadVariableOpReadVariableOp5group_normalization_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0|
#group_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
group_normalization_2/ReshapeReshape4group_normalization_2/Reshape/ReadVariableOp:value:0,group_normalization_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
.group_normalization_2/Reshape_1/ReadVariableOpReadVariableOp7group_normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype0~
%group_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
group_normalization_2/Reshape_1Reshape6group_normalization_2/Reshape_1/ReadVariableOp:value:0.group_normalization_2/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@j
%group_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#group_normalization_2/batchnorm/addAddV2/group_normalization_2/moments/variance:output:0.group_normalization_2/batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������@�
%group_normalization_2/batchnorm/RsqrtRsqrt'group_normalization_2/batchnorm/add:z:0*
T0*/
_output_shapes
:���������@�
#group_normalization_2/batchnorm/mulMul)group_normalization_2/batchnorm/Rsqrt:y:0&group_normalization_2/Reshape:output:0*
T0*/
_output_shapes
:���������@�
%group_normalization_2/batchnorm/mul_1Mul2module_wrapper_6/conv2d_transpose/BiasAdd:output:0'group_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@@�
%group_normalization_2/batchnorm/mul_2Mul+group_normalization_2/moments/mean:output:0'group_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@�
#group_normalization_2/batchnorm/subSub(group_normalization_2/Reshape_1:output:0)group_normalization_2/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������@�
%group_normalization_2/batchnorm/add_1AddV2)group_normalization_2/batchnorm/mul_1:z:0'group_normalization_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@@�
"module_wrapper_7/activation_3/ReluRelu)group_normalization_2/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@@�
/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_8_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
 module_wrapper_8/conv2d_2/Conv2DConv2D0module_wrapper_7/activation_3/Relu:activations:07module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_8_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!module_wrapper_8/conv2d_2/BiasAddBiasAdd)module_wrapper_8/conv2d_2/Conv2D:output:08module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
!module_wrapper_8/conv2d_2/SigmoidSigmoid*module_wrapper_8/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@|
IdentityIdentity%module_wrapper_8/conv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp+^group_normalization/Reshape/ReadVariableOp-^group_normalization/Reshape_1/ReadVariableOp-^group_normalization_1/Reshape/ReadVariableOp/^group_normalization_1/Reshape_1/ReadVariableOp-^group_normalization_2/Reshape/ReadVariableOp/^group_normalization_2/Reshape_1/ReadVariableOp-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp9^module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpB^module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp1^module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2X
*group_normalization/Reshape/ReadVariableOp*group_normalization/Reshape/ReadVariableOp2\
,group_normalization/Reshape_1/ReadVariableOp,group_normalization/Reshape_1/ReadVariableOp2\
,group_normalization_1/Reshape/ReadVariableOp,group_normalization_1/Reshape/ReadVariableOp2`
.group_normalization_1/Reshape_1/ReadVariableOp.group_normalization_1/Reshape_1/ReadVariableOp2\
,group_normalization_2/Reshape/ReadVariableOp,group_normalization_2/Reshape/ReadVariableOp2`
.group_normalization_2/Reshape_1/ReadVariableOp.group_normalization_2/Reshape_1/ReadVariableOp2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2t
8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp2�
Amodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOpAmodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp2d
0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25111

args_0
identity[
activation_1/ReluReluargs_0*
T0*/
_output_shapes
:���������@@ o
IdentityIdentityactivation_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_7_layer_call_fn_26316

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_25011h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�)
�
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_24807

inputs-
reshape_readvariableop_resource: /
!reshape_1_readvariableop_resource: 
identity��Reshape/ReadVariableOp�Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(u
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:��������� �
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@ s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(r
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
: *
dtype0f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
: v
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
: *
dtype0h
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
: T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:��������� e
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:��������� u
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:��������� k
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@ z
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:��������� w
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:��������� z
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@ j
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:���������@@ z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@ : : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs
�)
�
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_24906

inputs-
reshape_readvariableop_resource:@/
!reshape_1_readvariableop_resource:@
identity��Reshape/ReadVariableOp�Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(u
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:���������@�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(r
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:@*
dtype0f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   {
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:@v
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype0h
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:@T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������@e
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:���������@u
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:���������@k
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@@z
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@w
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������@z
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@@j
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:���������@@@z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�)
�
N__inference_group_normalization_layer_call_and_return_conditional_losses_25964

inputs-
reshape_readvariableop_resource:/
!reshape_1_readvariableop_resource:
identity��Reshape/ReadVariableOp�Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(u
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:����������
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(r
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:*
dtype0f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            {
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:v
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:*
dtype0h
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������e
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:���������u
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:���������k
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@z
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:���������w
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������z
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@j
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:���������@@z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
L
0__inference_module_wrapper_1_layer_call_fn_25974

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25166h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_5_layer_call_fn_26136

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_25079h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
3__inference_group_normalization_layer_call_fn_25921

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_group_normalization_layer_call_and_return_conditional_losses_24735w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26012

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity��conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ p
IdentityIdentityconv2d_1/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@ �
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25979

args_0
identityY
activation/ReluReluargs_0*
T0*/
_output_shapes
:���������@@m
IdentityIdentityactivation/Relu:activations:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
*__inference_sequential_layer_call_fn_25513

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:@ 
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24937w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�:
�
E__inference_sequential_layer_call_and_return_conditional_losses_25439
module_wrapper_input.
module_wrapper_25398:"
module_wrapper_25400:'
group_normalization_25403:'
group_normalization_25405:0
module_wrapper_2_25409: $
module_wrapper_2_25411: )
group_normalization_1_25414: )
group_normalization_1_25416: 0
module_wrapper_6_25422:@ $
module_wrapper_6_25424:@)
group_normalization_2_25427:@)
group_normalization_2_25429:@0
module_wrapper_8_25433:@$
module_wrapper_8_25435:
identity��+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�-group_normalization_2/StatefulPartitionedCall�&module_wrapper/StatefulPartitionedCall�(module_wrapper_2/StatefulPartitionedCall�(module_wrapper_6/StatefulPartitionedCall�(module_wrapper_8/StatefulPartitionedCall�
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_25398module_wrapper_25400*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25201�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0group_normalization_25403group_normalization_25405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_group_normalization_layer_call_and_return_conditional_losses_24735�
 module_wrapper_1/PartitionedCallPartitionedCall4group_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25166�
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_25409module_wrapper_2_25411*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_25146�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0group_normalization_1_25414group_normalization_1_25416*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_24807�
 module_wrapper_3/PartitionedCallPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_25111�
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25095�
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_25079�
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_25422module_wrapper_6_25424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_25059�
-group_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0group_normalization_2_25427group_normalization_2_25429*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_24906�
 module_wrapper_7/PartitionedCallPartitionedCall6group_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_25011�
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_7/PartitionedCall:output:0module_wrapper_8_25433module_wrapper_8_25435*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24991�
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall.^group_normalization_2/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall2^
-group_normalization_2/StatefulPartitionedCall-group_normalization_2/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:e a
/
_output_shapes
:���������@@
.
_user_specified_namemodule_wrapper_input
�
�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26187

args_0S
9conv2d_transpose_conv2d_transpose_readvariableop_resource:@ >
0conv2d_transpose_biasadd_readvariableop_resource:@
identity��'conv2d_transpose/BiasAdd/ReadVariableOp�0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@x
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24857

args_0S
9conv2d_transpose_conv2d_transpose_readvariableop_resource:@ >
0conv2d_transpose_biasadd_readvariableop_resource:@
identity��'conv2d_transpose/BiasAdd/ReadVariableOp�0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeargs_0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0args_0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@x
IdentityIdentity!conv2d_transpose/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�)
�
N__inference_group_normalization_layer_call_and_return_conditional_losses_24735

inputs-
reshape_readvariableop_resource:/
!reshape_1_readvariableop_resource:
identity��Reshape/ReadVariableOp�Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(u
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:����������
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(r
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:*
dtype0f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            {
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:v
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:*
dtype0h
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������e
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:���������u
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:���������k
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@z
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:���������w
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������z
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@j
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:���������@@z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24991

args_0A
'conv2d_2_conv2d_readvariableop_resource:@6
(conv2d_2_biasadd_readvariableop_resource:
identity��conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@p
conv2d_2/SigmoidSigmoidconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@k
IdentityIdentityconv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_25095

args_0
identity�
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
�
0__inference_module_wrapper_6_layer_call_fn_26164

args_0!
unknown:@ 
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_25059w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25201

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@n
IdentityIdentityconv2d/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
�
0__inference_module_wrapper_6_layer_call_fn_26155

args_0!
unknown:@ 
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24857w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������   
 
_user_specified_nameargs_0
�
�
0__inference_module_wrapper_2_layer_call_fn_25993

args_0!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24758w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�
L
0__inference_module_wrapper_1_layer_call_fn_25969

args_0
identity�
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24746h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameargs_0
�:
�
E__inference_sequential_layer_call_and_return_conditional_losses_24937

inputs.
module_wrapper_24687:"
module_wrapper_24689:'
group_normalization_24736:'
group_normalization_24738:0
module_wrapper_2_24759: $
module_wrapper_2_24761: )
group_normalization_1_24808: )
group_normalization_1_24810: 0
module_wrapper_6_24858:@ $
module_wrapper_6_24860:@)
group_normalization_2_24907:@)
group_normalization_2_24909:@0
module_wrapper_8_24931:@$
module_wrapper_8_24933:
identity��+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�-group_normalization_2/StatefulPartitionedCall�&module_wrapper/StatefulPartitionedCall�(module_wrapper_2/StatefulPartitionedCall�(module_wrapper_6/StatefulPartitionedCall�(module_wrapper_8/StatefulPartitionedCall�
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_24687module_wrapper_24689*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24686�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0group_normalization_24736group_normalization_24738*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_group_normalization_layer_call_and_return_conditional_losses_24735�
 module_wrapper_1/PartitionedCallPartitionedCall4group_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24746�
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_24759module_wrapper_2_24761*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24758�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0group_normalization_1_24808group_normalization_1_24810*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_24807�
 module_wrapper_3/PartitionedCallPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24818�
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24825�
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24832�
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_24858module_wrapper_6_24860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24857�
-group_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0group_normalization_2_24907group_normalization_2_24909*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_24906�
 module_wrapper_7/PartitionedCallPartitionedCall6group_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_24917�
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_7/PartitionedCall:output:0module_wrapper_8_24931module_wrapper_8_24933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24930�
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall.^group_normalization_2/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall2^
-group_normalization_2/StatefulPartitionedCall-group_normalization_2/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
0__inference_module_wrapper_8_layer_call_fn_26344

args_0!
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_24991w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
�
�
*__inference_sequential_layer_call_fn_25546

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:@ 
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25287w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
g
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_25011

args_0
identity[
activation_3/ReluReluargs_0*
T0*/
_output_shapes
:���������@@@o
IdentityIdentityactivation_3/Relu:activations:0*
T0*/
_output_shapes
:���������@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@@:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameargs_0
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_25710

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:A
3group_normalization_reshape_readvariableop_resource:C
5group_normalization_reshape_1_readvariableop_resource:R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource: G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: C
5group_normalization_1_reshape_readvariableop_resource: E
7group_normalization_1_reshape_1_readvariableop_resource: d
Jmodule_wrapper_6_conv2d_transpose_conv2d_transpose_readvariableop_resource:@ O
Amodule_wrapper_6_conv2d_transpose_biasadd_readvariableop_resource:@C
5group_normalization_2_reshape_readvariableop_resource:@E
7group_normalization_2_reshape_1_readvariableop_resource:@R
8module_wrapper_8_conv2d_2_conv2d_readvariableop_resource:@G
9module_wrapper_8_conv2d_2_biasadd_readvariableop_resource:
identity��*group_normalization/Reshape/ReadVariableOp�,group_normalization/Reshape_1/ReadVariableOp�,group_normalization_1/Reshape/ReadVariableOp�.group_normalization_1/Reshape_1/ReadVariableOp�,group_normalization_2/Reshape/ReadVariableOp�.group_normalization_2/Reshape_1/ReadVariableOp�,module_wrapper/conv2d/BiasAdd/ReadVariableOp�+module_wrapper/conv2d/Conv2D/ReadVariableOp�0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp�/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp�8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp�Amodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp�0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp�/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp�
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@o
group_normalization/ShapeShape&module_wrapper/conv2d/BiasAdd:output:0*
T0*
_output_shapes
:q
'group_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)group_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)group_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!group_normalization/strided_sliceStridedSlice"group_normalization/Shape:output:00group_normalization/strided_slice/stack:output:02group_normalization/strided_slice/stack_1:output:02group_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization/strided_slice_1StridedSlice"group_normalization/Shape:output:02group_normalization/strided_slice_1/stack:output:04group_normalization/strided_slice_1/stack_1:output:04group_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization/strided_slice_2StridedSlice"group_normalization/Shape:output:02group_normalization/strided_slice_2/stack:output:04group_normalization/strided_slice_2/stack_1:output:04group_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization/strided_slice_3StridedSlice"group_normalization/Shape:output:02group_normalization/strided_slice_3/stack:output:04group_normalization/strided_slice_3/stack_1:output:04group_normalization/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2group_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
 group_normalization/moments/meanMean&module_wrapper/conv2d/BiasAdd:output:0;group_normalization/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(�
(group_normalization/moments/StopGradientStopGradient)group_normalization/moments/mean:output:0*
T0*/
_output_shapes
:����������
-group_normalization/moments/SquaredDifferenceSquaredDifference&module_wrapper/conv2d/BiasAdd:output:01group_normalization/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@�
6group_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
$group_normalization/moments/varianceMean1group_normalization/moments/SquaredDifference:z:0?group_normalization/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(�
*group_normalization/Reshape/ReadVariableOpReadVariableOp3group_normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype0z
!group_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
group_normalization/ReshapeReshape2group_normalization/Reshape/ReadVariableOp:value:0*group_normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:�
,group_normalization/Reshape_1/ReadVariableOpReadVariableOp5group_normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype0|
#group_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
group_normalization/Reshape_1Reshape4group_normalization/Reshape_1/ReadVariableOp:value:0,group_normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:h
#group_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
!group_normalization/batchnorm/addAddV2-group_normalization/moments/variance:output:0,group_normalization/batchnorm/add/y:output:0*
T0*/
_output_shapes
:����������
#group_normalization/batchnorm/RsqrtRsqrt%group_normalization/batchnorm/add:z:0*
T0*/
_output_shapes
:����������
!group_normalization/batchnorm/mulMul'group_normalization/batchnorm/Rsqrt:y:0$group_normalization/Reshape:output:0*
T0*/
_output_shapes
:����������
#group_normalization/batchnorm/mul_1Mul&module_wrapper/conv2d/BiasAdd:output:0%group_normalization/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@�
#group_normalization/batchnorm/mul_2Mul)group_normalization/moments/mean:output:0%group_normalization/batchnorm/mul:z:0*
T0*/
_output_shapes
:����������
!group_normalization/batchnorm/subSub&group_normalization/Reshape_1:output:0'group_normalization/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:����������
#group_normalization/batchnorm/add_1AddV2'group_normalization/batchnorm/mul_1:z:0%group_normalization/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@�
 module_wrapper_1/activation/ReluRelu'group_normalization/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@�
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
 module_wrapper_2/conv2d_1/Conv2DConv2D.module_wrapper_1/activation/Relu:activations:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ u
group_normalization_1/ShapeShape*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:s
)group_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization_1/strided_sliceStridedSlice$group_normalization_1/Shape:output:02group_normalization_1/strided_slice/stack:output:04group_normalization_1/strided_slice/stack_1:output:04group_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_1/strided_slice_1StridedSlice$group_normalization_1/Shape:output:04group_normalization_1/strided_slice_1/stack:output:06group_normalization_1/strided_slice_1/stack_1:output:06group_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_1/strided_slice_2StridedSlice$group_normalization_1/Shape:output:04group_normalization_1/strided_slice_2/stack:output:06group_normalization_1/strided_slice_2/stack_1:output:06group_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_1/strided_slice_3StridedSlice$group_normalization_1/Shape:output:04group_normalization_1/strided_slice_3/stack:output:06group_normalization_1/strided_slice_3/stack_1:output:06group_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4group_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
"group_normalization_1/moments/meanMean*module_wrapper_2/conv2d_1/BiasAdd:output:0=group_normalization_1/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(�
*group_normalization_1/moments/StopGradientStopGradient+group_normalization_1/moments/mean:output:0*
T0*/
_output_shapes
:��������� �
/group_normalization_1/moments/SquaredDifferenceSquaredDifference*module_wrapper_2/conv2d_1/BiasAdd:output:03group_normalization_1/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@ �
8group_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
&group_normalization_1/moments/varianceMean3group_normalization_1/moments/SquaredDifference:z:0Agroup_normalization_1/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:��������� *
	keep_dims(�
,group_normalization_1/Reshape/ReadVariableOpReadVariableOp5group_normalization_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0|
#group_normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
group_normalization_1/ReshapeReshape4group_normalization_1/Reshape/ReadVariableOp:value:0,group_normalization_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
.group_normalization_1/Reshape_1/ReadVariableOpReadVariableOp7group_normalization_1_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype0~
%group_normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
group_normalization_1/Reshape_1Reshape6group_normalization_1/Reshape_1/ReadVariableOp:value:0.group_normalization_1/Reshape_1/shape:output:0*
T0*&
_output_shapes
: j
%group_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#group_normalization_1/batchnorm/addAddV2/group_normalization_1/moments/variance:output:0.group_normalization_1/batchnorm/add/y:output:0*
T0*/
_output_shapes
:��������� �
%group_normalization_1/batchnorm/RsqrtRsqrt'group_normalization_1/batchnorm/add:z:0*
T0*/
_output_shapes
:��������� �
#group_normalization_1/batchnorm/mulMul)group_normalization_1/batchnorm/Rsqrt:y:0&group_normalization_1/Reshape:output:0*
T0*/
_output_shapes
:��������� �
%group_normalization_1/batchnorm/mul_1Mul*module_wrapper_2/conv2d_1/BiasAdd:output:0'group_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@ �
%group_normalization_1/batchnorm/mul_2Mul+group_normalization_1/moments/mean:output:0'group_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:��������� �
#group_normalization_1/batchnorm/subSub(group_normalization_1/Reshape_1:output:0)group_normalization_1/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:��������� �
%group_normalization_1/batchnorm/add_1AddV2)group_normalization_1/batchnorm/mul_1:z:0'group_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@ �
"module_wrapper_3/activation_1/ReluRelu)group_normalization_1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@ �
&module_wrapper_4/max_pooling2d/MaxPoolMaxPool0module_wrapper_3/activation_1/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
�
"module_wrapper_5/activation_2/ReluRelu/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   �
'module_wrapper_6/conv2d_transpose/ShapeShape0module_wrapper_5/activation_2/Relu:activations:0*
T0*
_output_shapes
:
5module_wrapper_6/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7module_wrapper_6/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7module_wrapper_6/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/module_wrapper_6/conv2d_transpose/strided_sliceStridedSlice0module_wrapper_6/conv2d_transpose/Shape:output:0>module_wrapper_6/conv2d_transpose/strided_slice/stack:output:0@module_wrapper_6/conv2d_transpose/strided_slice/stack_1:output:0@module_wrapper_6/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)module_wrapper_6/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@k
)module_wrapper_6/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@k
)module_wrapper_6/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
'module_wrapper_6/conv2d_transpose/stackPack8module_wrapper_6/conv2d_transpose/strided_slice:output:02module_wrapper_6/conv2d_transpose/stack/1:output:02module_wrapper_6/conv2d_transpose/stack/2:output:02module_wrapper_6/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:�
7module_wrapper_6/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9module_wrapper_6/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9module_wrapper_6/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1module_wrapper_6/conv2d_transpose/strided_slice_1StridedSlice0module_wrapper_6/conv2d_transpose/stack:output:0@module_wrapper_6/conv2d_transpose/strided_slice_1/stack:output:0Bmodule_wrapper_6/conv2d_transpose/strided_slice_1/stack_1:output:0Bmodule_wrapper_6/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Amodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpJmodule_wrapper_6_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
2module_wrapper_6/conv2d_transpose/conv2d_transposeConv2DBackpropInput0module_wrapper_6/conv2d_transpose/stack:output:0Imodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:00module_wrapper_5/activation_2/Relu:activations:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpAmodule_wrapper_6_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)module_wrapper_6/conv2d_transpose/BiasAddBiasAdd;module_wrapper_6/conv2d_transpose/conv2d_transpose:output:0@module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@}
group_normalization_2/ShapeShape2module_wrapper_6/conv2d_transpose/BiasAdd:output:0*
T0*
_output_shapes
:s
)group_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#group_normalization_2/strided_sliceStridedSlice$group_normalization_2/Shape:output:02group_normalization_2/strided_slice/stack:output:04group_normalization_2/strided_slice/stack_1:output:04group_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_2/strided_slice_1StridedSlice$group_normalization_2/Shape:output:04group_normalization_2/strided_slice_1/stack:output:06group_normalization_2/strided_slice_1/stack_1:output:06group_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_2/strided_slice_2StridedSlice$group_normalization_2/Shape:output:04group_normalization_2/strided_slice_2/stack:output:06group_normalization_2/strided_slice_2/stack_1:output:06group_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%group_normalization_2/strided_slice_3StridedSlice$group_normalization_2/Shape:output:04group_normalization_2/strided_slice_3/stack:output:06group_normalization_2/strided_slice_3/stack_1:output:06group_normalization_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4group_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
"group_normalization_2/moments/meanMean2module_wrapper_6/conv2d_transpose/BiasAdd:output:0=group_normalization_2/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(�
*group_normalization_2/moments/StopGradientStopGradient+group_normalization_2/moments/mean:output:0*
T0*/
_output_shapes
:���������@�
/group_normalization_2/moments/SquaredDifferenceSquaredDifference2module_wrapper_6/conv2d_transpose/BiasAdd:output:03group_normalization_2/moments/StopGradient:output:0*
T0*/
_output_shapes
:���������@@@�
8group_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
&group_normalization_2/moments/varianceMean3group_normalization_2/moments/SquaredDifference:z:0Agroup_normalization_2/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:���������@*
	keep_dims(�
,group_normalization_2/Reshape/ReadVariableOpReadVariableOp5group_normalization_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0|
#group_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
group_normalization_2/ReshapeReshape4group_normalization_2/Reshape/ReadVariableOp:value:0,group_normalization_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
.group_normalization_2/Reshape_1/ReadVariableOpReadVariableOp7group_normalization_2_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype0~
%group_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
group_normalization_2/Reshape_1Reshape6group_normalization_2/Reshape_1/ReadVariableOp:value:0.group_normalization_2/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@j
%group_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#group_normalization_2/batchnorm/addAddV2/group_normalization_2/moments/variance:output:0.group_normalization_2/batchnorm/add/y:output:0*
T0*/
_output_shapes
:���������@�
%group_normalization_2/batchnorm/RsqrtRsqrt'group_normalization_2/batchnorm/add:z:0*
T0*/
_output_shapes
:���������@�
#group_normalization_2/batchnorm/mulMul)group_normalization_2/batchnorm/Rsqrt:y:0&group_normalization_2/Reshape:output:0*
T0*/
_output_shapes
:���������@�
%group_normalization_2/batchnorm/mul_1Mul2module_wrapper_6/conv2d_transpose/BiasAdd:output:0'group_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@@@�
%group_normalization_2/batchnorm/mul_2Mul+group_normalization_2/moments/mean:output:0'group_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@�
#group_normalization_2/batchnorm/subSub(group_normalization_2/Reshape_1:output:0)group_normalization_2/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:���������@�
%group_normalization_2/batchnorm/add_1AddV2)group_normalization_2/batchnorm/mul_1:z:0'group_normalization_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@@@�
"module_wrapper_7/activation_3/ReluRelu)group_normalization_2/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������@@@�
/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_8_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
 module_wrapper_8/conv2d_2/Conv2DConv2D0module_wrapper_7/activation_3/Relu:activations:07module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingVALID*
strides
�
0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_8_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!module_wrapper_8/conv2d_2/BiasAddBiasAdd)module_wrapper_8/conv2d_2/Conv2D:output:08module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
!module_wrapper_8/conv2d_2/SigmoidSigmoid*module_wrapper_8/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@|
IdentityIdentity%module_wrapper_8/conv2d_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp+^group_normalization/Reshape/ReadVariableOp-^group_normalization/Reshape_1/ReadVariableOp-^group_normalization_1/Reshape/ReadVariableOp/^group_normalization_1/Reshape_1/ReadVariableOp-^group_normalization_2/Reshape/ReadVariableOp/^group_normalization_2/Reshape_1/ReadVariableOp-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp9^module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOpB^module_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp1^module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������@@: : : : : : : : : : : : : : 2X
*group_normalization/Reshape/ReadVariableOp*group_normalization/Reshape/ReadVariableOp2\
,group_normalization/Reshape_1/ReadVariableOp,group_normalization/Reshape_1/ReadVariableOp2\
,group_normalization_1/Reshape/ReadVariableOp,group_normalization_1/Reshape/ReadVariableOp2`
.group_normalization_1/Reshape_1/ReadVariableOp.group_normalization_1/Reshape_1/ReadVariableOp2\
,group_normalization_2/Reshape/ReadVariableOp,group_normalization_2/Reshape/ReadVariableOp2`
.group_normalization_2/Reshape_1/ReadVariableOp.group_normalization_2/Reshape_1/ReadVariableOp2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2t
8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp8module_wrapper_6/conv2d_transpose/BiasAdd/ReadVariableOp2�
Amodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOpAmodule_wrapper_6/conv2d_transpose/conv2d_transpose/ReadVariableOp2d
0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_8/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_8/conv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26109

args_0
identity�
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0
�
g
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26089

args_0
identity[
activation_1/ReluReluargs_0*
T0*/
_output_shapes
:���������@@ o
IdentityIdentityactivation_1/Relu:activations:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameargs_0"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
]
module_wrapper_inputE
&serving_default_module_wrapper_input:0���������@@L
module_wrapper_88
StatefulPartitionedCall:0���������@@tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_module"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
	#gamma
$beta"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_module"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_module"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
	9gamma
:beta"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_module"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H_module"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_module"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_module"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
	]gamma
^beta"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
e_module"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_module"
_tf_keras_layer
�
m0
n1
#2
$3
o4
p5
96
:7
q8
r9
]10
^11
s12
t13"
trackable_list_wrapper
�
m0
n1
#2
$3
o4
p5
96
:7
q8
r9
]10
^11
s12
t13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_0
{trace_1
|trace_2
}trace_32�
*__inference_sequential_layer_call_fn_24968
*__inference_sequential_layer_call_fn_25513
*__inference_sequential_layer_call_fn_25546
*__inference_sequential_layer_call_fn_25351�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0z{trace_1z|trace_2z}trace_3
�
~trace_0
trace_1
�trace_2
�trace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_25710
E__inference_sequential_layer_call_and_return_conditional_losses_25874
E__inference_sequential_layer_call_and_return_conditional_losses_25395
E__inference_sequential_layer_call_and_return_conditional_losses_25439�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0ztrace_1z�trace_2z�trace_3
�B�
 __inference__wrapped_model_24669module_wrapper_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate#m�$m�9m�:m�]m�^m�mm�nm�om�pm�qm�rm�sm�tm�#v�$v�9v�:v�]v�^v�mv�nv�ov�pv�qv�rv�sv�tv�"
	optimizer
-
�serving_default"
signature_map
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_module_wrapper_layer_call_fn_25883
.__inference_module_wrapper_layer_call_fn_25892�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25902
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

mkernel
nbias"
_tf_keras_layer
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_group_normalization_layer_call_fn_25921�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_group_normalization_layer_call_and_return_conditional_losses_25964�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%2group_normalization/gamma
&:$2group_normalization/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_1_layer_call_fn_25969
0__inference_module_wrapper_1_layer_call_fn_25974�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25979
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25984�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_2_layer_call_fn_25993
0__inference_module_wrapper_2_layer_call_fn_26002�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26012
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26022�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_group_normalization_1_layer_call_fn_26031�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_26074�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):' 2group_normalization_1/gamma
(:& 2group_normalization_1/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_3_layer_call_fn_26079
0__inference_module_wrapper_3_layer_call_fn_26084�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26089
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26094�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_4_layer_call_fn_26099
0__inference_module_wrapper_4_layer_call_fn_26104�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26109
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26114�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_5_layer_call_fn_26131
0__inference_module_wrapper_5_layer_call_fn_26136�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26141
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26146�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_6_layer_call_fn_26155
0__inference_module_wrapper_6_layer_call_fn_26164�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26187
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26210�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias"
_tf_keras_layer
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_group_normalization_2_layer_call_fn_26263�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_26306�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'@2group_normalization_2/gamma
(:&@2group_normalization_2/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_7_layer_call_fn_26311
0__inference_module_wrapper_7_layer_call_fn_26316�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26321
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26326�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_module_wrapper_8_layer_call_fn_26335
0__inference_module_wrapper_8_layer_call_fn_26344�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26355
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26366�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias"
_tf_keras_layer
6:42module_wrapper/conv2d/kernel
(:&2module_wrapper/conv2d/bias
::8 2 module_wrapper_2/conv2d_1/kernel
,:* 2module_wrapper_2/conv2d_1/bias
B:@@ 2(module_wrapper_6/conv2d_transpose/kernel
4:2@2&module_wrapper_6/conv2d_transpose/bias
::8@2 module_wrapper_8/conv2d_2/kernel
,:*2module_wrapper_8/conv2d_2/bias
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_24968module_wrapper_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_25513inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_25546inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_25351module_wrapper_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_25710inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_25874inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_25395module_wrapper_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_25439module_wrapper_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_25480module_wrapper_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
.__inference_module_wrapper_layer_call_fn_25883args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
.__inference_module_wrapper_layer_call_fn_25892args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25902args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
3__inference_group_normalization_layer_call_fn_25921inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_group_normalization_layer_call_and_return_conditional_losses_25964inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_1_layer_call_fn_25969args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_1_layer_call_fn_25974args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25979args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25984args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_2_layer_call_fn_25993args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_2_layer_call_fn_26002args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26012args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26022args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
5__inference_group_normalization_1_layer_call_fn_26031inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_26074inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_3_layer_call_fn_26079args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_3_layer_call_fn_26084args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26089args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26094args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_4_layer_call_fn_26099args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_4_layer_call_fn_26104args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26109args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26114args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling2d_layer_call_fn_26126�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������z�trace_0
�
�trace_02�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_26120�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������z�trace_0
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
�B�
0__inference_module_wrapper_5_layer_call_fn_26131args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_5_layer_call_fn_26136args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26141args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26146args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_6_layer_call_fn_26155args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_6_layer_call_fn_26164args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26187args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26210args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_conv2d_transpose_layer_call_fn_26254�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *7�4
2�/+��������������������������� z�trace_0
�
�trace_02�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_26244�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *7�4
2�/+��������������������������� z�trace_0
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
�B�
5__inference_group_normalization_2_layer_call_fn_26263inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_26306inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_7_layer_call_fn_26311args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_7_layer_call_fn_26316args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26321args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26326args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_module_wrapper_8_layer_call_fn_26335args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
0__inference_module_wrapper_8_layer_call_fn_26344args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26355args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26366args_0"�
���
FullArgSpec
args�
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
 "
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
�
�layer_metrics
�non_trainable_variables
 �layer_regularization_losses
�regularization_losses
�	variables
�trainable_variables
�layers
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
-__inference_max_pooling2d_layer_call_fn_26126inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�B�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_26120inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
0__inference_conv2d_transpose_layer_call_fn_26254inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *7�4
2�/+��������������������������� 
�B�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_26244inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *7�4
2�/+��������������������������� 
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*2 Adam/group_normalization/gamma/m
+:)2Adam/group_normalization/beta/m
.:, 2"Adam/group_normalization_1/gamma/m
-:+ 2!Adam/group_normalization_1/beta/m
.:,@2"Adam/group_normalization_2/gamma/m
-:+@2!Adam/group_normalization_2/beta/m
;:92#Adam/module_wrapper/conv2d/kernel/m
-:+2!Adam/module_wrapper/conv2d/bias/m
?:= 2'Adam/module_wrapper_2/conv2d_1/kernel/m
1:/ 2%Adam/module_wrapper_2/conv2d_1/bias/m
G:E@ 2/Adam/module_wrapper_6/conv2d_transpose/kernel/m
9:7@2-Adam/module_wrapper_6/conv2d_transpose/bias/m
?:=@2'Adam/module_wrapper_8/conv2d_2/kernel/m
1:/2%Adam/module_wrapper_8/conv2d_2/bias/m
,:*2 Adam/group_normalization/gamma/v
+:)2Adam/group_normalization/beta/v
.:, 2"Adam/group_normalization_1/gamma/v
-:+ 2!Adam/group_normalization_1/beta/v
.:,@2"Adam/group_normalization_2/gamma/v
-:+@2!Adam/group_normalization_2/beta/v
;:92#Adam/module_wrapper/conv2d/kernel/v
-:+2!Adam/module_wrapper/conv2d/bias/v
?:= 2'Adam/module_wrapper_2/conv2d_1/kernel/v
1:/ 2%Adam/module_wrapper_2/conv2d_1/bias/v
G:E@ 2/Adam/module_wrapper_6/conv2d_transpose/kernel/v
9:7@2-Adam/module_wrapper_6/conv2d_transpose/bias/v
?:=@2'Adam/module_wrapper_8/conv2d_2/kernel/v
1:/2%Adam/module_wrapper_8/conv2d_2/bias/v�
 __inference__wrapped_model_24669�mn#$op9:qr]^stE�B
;�8
6�3
module_wrapper_input���������@@
� "K�H
F
module_wrapper_82�/
module_wrapper_8���������@@�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_26244�qrI�F
?�<
:�7
inputs+��������������������������� 
� "?�<
5�2
0+���������������������������@
� �
0__inference_conv2d_transpose_layer_call_fn_26254�qrI�F
?�<
:�7
inputs+��������������������������� 
� "2�/+���������������������������@�
P__inference_group_normalization_1_layer_call_and_return_conditional_losses_26074l9:7�4
-�*
(�%
inputs���������@@ 
� "-�*
#� 
0���������@@ 
� �
5__inference_group_normalization_1_layer_call_fn_26031_9:7�4
-�*
(�%
inputs���������@@ 
� " ����������@@ �
P__inference_group_normalization_2_layer_call_and_return_conditional_losses_26306l]^7�4
-�*
(�%
inputs���������@@@
� "-�*
#� 
0���������@@@
� �
5__inference_group_normalization_2_layer_call_fn_26263_]^7�4
-�*
(�%
inputs���������@@@
� " ����������@@@�
N__inference_group_normalization_layer_call_and_return_conditional_losses_25964l#$7�4
-�*
(�%
inputs���������@@
� "-�*
#� 
0���������@@
� �
3__inference_group_normalization_layer_call_fn_25921_#$7�4
-�*
(�%
inputs���������@@
� " ����������@@�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_26120�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_26126�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25979xG�D
-�*
(�%
args_0���������@@
�

trainingp "-�*
#� 
0���������@@
� �
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_25984xG�D
-�*
(�%
args_0���������@@
�

trainingp"-�*
#� 
0���������@@
� �
0__inference_module_wrapper_1_layer_call_fn_25969kG�D
-�*
(�%
args_0���������@@
�

trainingp " ����������@@�
0__inference_module_wrapper_1_layer_call_fn_25974kG�D
-�*
(�%
args_0���������@@
�

trainingp" ����������@@�
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26012|opG�D
-�*
(�%
args_0���������@@
�

trainingp "-�*
#� 
0���������@@ 
� �
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_26022|opG�D
-�*
(�%
args_0���������@@
�

trainingp"-�*
#� 
0���������@@ 
� �
0__inference_module_wrapper_2_layer_call_fn_25993oopG�D
-�*
(�%
args_0���������@@
�

trainingp " ����������@@ �
0__inference_module_wrapper_2_layer_call_fn_26002oopG�D
-�*
(�%
args_0���������@@
�

trainingp" ����������@@ �
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26089xG�D
-�*
(�%
args_0���������@@ 
�

trainingp "-�*
#� 
0���������@@ 
� �
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_26094xG�D
-�*
(�%
args_0���������@@ 
�

trainingp"-�*
#� 
0���������@@ 
� �
0__inference_module_wrapper_3_layer_call_fn_26079kG�D
-�*
(�%
args_0���������@@ 
�

trainingp " ����������@@ �
0__inference_module_wrapper_3_layer_call_fn_26084kG�D
-�*
(�%
args_0���������@@ 
�

trainingp" ����������@@ �
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26109xG�D
-�*
(�%
args_0���������@@ 
�

trainingp "-�*
#� 
0���������   
� �
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_26114xG�D
-�*
(�%
args_0���������@@ 
�

trainingp"-�*
#� 
0���������   
� �
0__inference_module_wrapper_4_layer_call_fn_26099kG�D
-�*
(�%
args_0���������@@ 
�

trainingp " ����������   �
0__inference_module_wrapper_4_layer_call_fn_26104kG�D
-�*
(�%
args_0���������@@ 
�

trainingp" ����������   �
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26141xG�D
-�*
(�%
args_0���������   
�

trainingp "-�*
#� 
0���������   
� �
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_26146xG�D
-�*
(�%
args_0���������   
�

trainingp"-�*
#� 
0���������   
� �
0__inference_module_wrapper_5_layer_call_fn_26131kG�D
-�*
(�%
args_0���������   
�

trainingp " ����������   �
0__inference_module_wrapper_5_layer_call_fn_26136kG�D
-�*
(�%
args_0���������   
�

trainingp" ����������   �
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26187|qrG�D
-�*
(�%
args_0���������   
�

trainingp "-�*
#� 
0���������@@@
� �
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_26210|qrG�D
-�*
(�%
args_0���������   
�

trainingp"-�*
#� 
0���������@@@
� �
0__inference_module_wrapper_6_layer_call_fn_26155oqrG�D
-�*
(�%
args_0���������   
�

trainingp " ����������@@@�
0__inference_module_wrapper_6_layer_call_fn_26164oqrG�D
-�*
(�%
args_0���������   
�

trainingp" ����������@@@�
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26321xG�D
-�*
(�%
args_0���������@@@
�

trainingp "-�*
#� 
0���������@@@
� �
K__inference_module_wrapper_7_layer_call_and_return_conditional_losses_26326xG�D
-�*
(�%
args_0���������@@@
�

trainingp"-�*
#� 
0���������@@@
� �
0__inference_module_wrapper_7_layer_call_fn_26311kG�D
-�*
(�%
args_0���������@@@
�

trainingp " ����������@@@�
0__inference_module_wrapper_7_layer_call_fn_26316kG�D
-�*
(�%
args_0���������@@@
�

trainingp" ����������@@@�
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26355|stG�D
-�*
(�%
args_0���������@@@
�

trainingp "-�*
#� 
0���������@@
� �
K__inference_module_wrapper_8_layer_call_and_return_conditional_losses_26366|stG�D
-�*
(�%
args_0���������@@@
�

trainingp"-�*
#� 
0���������@@
� �
0__inference_module_wrapper_8_layer_call_fn_26335ostG�D
-�*
(�%
args_0���������@@@
�

trainingp " ����������@@�
0__inference_module_wrapper_8_layer_call_fn_26344ostG�D
-�*
(�%
args_0���������@@@
�

trainingp" ����������@@�
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25902|mnG�D
-�*
(�%
args_0���������@@
�

trainingp "-�*
#� 
0���������@@
� �
I__inference_module_wrapper_layer_call_and_return_conditional_losses_25912|mnG�D
-�*
(�%
args_0���������@@
�

trainingp"-�*
#� 
0���������@@
� �
.__inference_module_wrapper_layer_call_fn_25883omnG�D
-�*
(�%
args_0���������@@
�

trainingp " ����������@@�
.__inference_module_wrapper_layer_call_fn_25892omnG�D
-�*
(�%
args_0���������@@
�

trainingp" ����������@@�
E__inference_sequential_layer_call_and_return_conditional_losses_25395�mn#$op9:qr]^stM�J
C�@
6�3
module_wrapper_input���������@@
p 

 
� "-�*
#� 
0���������@@
� �
E__inference_sequential_layer_call_and_return_conditional_losses_25439�mn#$op9:qr]^stM�J
C�@
6�3
module_wrapper_input���������@@
p

 
� "-�*
#� 
0���������@@
� �
E__inference_sequential_layer_call_and_return_conditional_losses_25710�mn#$op9:qr]^st?�<
5�2
(�%
inputs���������@@
p 

 
� "-�*
#� 
0���������@@
� �
E__inference_sequential_layer_call_and_return_conditional_losses_25874�mn#$op9:qr]^st?�<
5�2
(�%
inputs���������@@
p

 
� "-�*
#� 
0���������@@
� �
*__inference_sequential_layer_call_fn_24968�mn#$op9:qr]^stM�J
C�@
6�3
module_wrapper_input���������@@
p 

 
� " ����������@@�
*__inference_sequential_layer_call_fn_25351�mn#$op9:qr]^stM�J
C�@
6�3
module_wrapper_input���������@@
p

 
� " ����������@@�
*__inference_sequential_layer_call_fn_25513smn#$op9:qr]^st?�<
5�2
(�%
inputs���������@@
p 

 
� " ����������@@�
*__inference_sequential_layer_call_fn_25546smn#$op9:qr]^st?�<
5�2
(�%
inputs���������@@
p

 
� " ����������@@�
#__inference_signature_wrapper_25480�mn#$op9:qr]^st]�Z
� 
S�P
N
module_wrapper_input6�3
module_wrapper_input���������@@"K�H
F
module_wrapper_82�/
module_wrapper_8���������@@