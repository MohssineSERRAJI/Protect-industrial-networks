Ĭ'
? ?
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??$
~
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_2/kernel
w
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*"
_output_shapes
: *
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
: *
dtype0
~
conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv1d_3/kernel
w
#conv1d_3/kernel/Read/ReadVariableOpReadVariableOpconv1d_3/kernel*"
_output_shapes
: @*
dtype0
r
conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_3/bias
k
!conv1d_3/bias/Read/ReadVariableOpReadVariableOpconv1d_3/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F
*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:F
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
Z
rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namerho
S
rho/Read/ReadVariableOpReadVariableOprho*
_output_shapes
: *
dtype0
?
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?**
shared_namelstm_1/lstm_cell_1/kernel
?
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	@?*
dtype0
?
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	F?*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
?
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes
:	F?*
dtype0
?
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_1/lstm_cell_1/bias
?
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:?*
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
?
conv1d_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameconv1d_2/kernel/rms

'conv1d_2/kernel/rms/Read/ReadVariableOpReadVariableOpconv1d_2/kernel/rms*"
_output_shapes
: *
dtype0
z
conv1d_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv1d_2/bias/rms
s
%conv1d_2/bias/rms/Read/ReadVariableOpReadVariableOpconv1d_2/bias/rms*
_output_shapes
: *
dtype0
?
conv1d_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_nameconv1d_3/kernel/rms

'conv1d_3/kernel/rms/Read/ReadVariableOpReadVariableOpconv1d_3/kernel/rms*"
_output_shapes
: @*
dtype0
z
conv1d_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv1d_3/bias/rms
s
%conv1d_3/bias/rms/Read/ReadVariableOpReadVariableOpconv1d_3/bias/rms*
_output_shapes
:@*
dtype0
?
dense_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F
*#
shared_namedense_1/kernel/rms
y
&dense_1/kernel/rms/Read/ReadVariableOpReadVariableOpdense_1/kernel/rms*
_output_shapes

:F
*
dtype0
x
dense_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_namedense_1/bias/rms
q
$dense_1/bias/rms/Read/ReadVariableOpReadVariableOpdense_1/bias/rms*
_output_shapes
:
*
dtype0
?
lstm_1/lstm_cell_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*.
shared_namelstm_1/lstm_cell_1/kernel/rms
?
1lstm_1/lstm_cell_1/kernel/rms/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel/rms*
_output_shapes
:	@?*
dtype0
?
'lstm_1/lstm_cell_1/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	F?*8
shared_name)'lstm_1/lstm_cell_1/recurrent_kernel/rms
?
;lstm_1/lstm_cell_1/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp'lstm_1/lstm_cell_1/recurrent_kernel/rms*
_output_shapes
:	F?*
dtype0
?
lstm_1/lstm_cell_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_1/lstm_cell_1/bias/rms
?
/lstm_1/lstm_cell_1/bias/rms/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias/rms*
_output_shapes	
:?*
dtype0

NoOpNoOp
?1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?1
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
 trainable_variables
!	keras_api
l
"cell
#
state_spec
$regularization_losses
%trainable_variables
&	variables
'	keras_api
R
(	variables
)regularization_losses
*trainable_variables
+	keras_api
h

,kernel
-bias
.	variables
/regularization_losses
0trainable_variables
1	keras_api
?
2iter
	3decay
4learning_rate
5momentum
6rho	rmsw	rmsx	rmsy	rmsz	,rms{	-rms|	7rms}	8rms~	9rms
 
?
0
1
2
3
74
85
96
,7
-8
?
0
1
2
3
74
85
96
,7
-8
?

:layers
;non_trainable_variables
	regularization_losses

trainable_variables
<layer_metrics
=metrics
>layer_regularization_losses
	variables
 
 
 
 
?

?layers
@non_trainable_variables
	variables
regularization_losses
Alayer_metrics
Bmetrics
Clayer_regularization_losses
trainable_variables
[Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Dlayers
Enon_trainable_variables
	variables
regularization_losses
Flayer_metrics
Gmetrics
Hlayer_regularization_losses
trainable_variables
[Y
VARIABLE_VALUEconv1d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Ilayers
Jnon_trainable_variables
	variables
regularization_losses
Klayer_metrics
Lmetrics
Mlayer_regularization_losses
trainable_variables
 
 
 
?

Nlayers
Onon_trainable_variables
	variables
regularization_losses
Player_metrics
Qmetrics
Rlayer_regularization_losses
 trainable_variables
~

7kernel
8recurrent_kernel
9bias
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
 
 

70
81
92

70
81
92
?

Wlayers
Xnon_trainable_variables
$regularization_losses
%trainable_variables

Ystates
Zlayer_metrics
[metrics
\layer_regularization_losses
&	variables
 
 
 
?

]layers
^non_trainable_variables
(	variables
)regularization_losses
_layer_metrics
`metrics
alayer_regularization_losses
*trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?

blayers
cnon_trainable_variables
.	variables
/regularization_losses
dlayer_metrics
emetrics
flayer_regularization_losses
0trainable_variables
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
A?
VARIABLE_VALUErho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_1/lstm_cell_1/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_1/lstm_cell_1/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
 
 

g0
h1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

70
81
92
 

70
81
92
?

ilayers
jnon_trainable_variables
S	variables
Tregularization_losses
klayer_metrics
lmetrics
mlayer_regularization_losses
Utrainable_variables

"0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ntotal
	ocount
p	variables
q	keras_api
D
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

u	variables
}{
VARIABLE_VALUEconv1d_2/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv1d_2/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEconv1d_3/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv1d_3/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEdense_1/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUElstm_1/lstm_cell_1/kernel/rmsNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'lstm_1/lstm_cell_1/recurrent_kernel/rmsNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUElstm_1/lstm_cell_1/bias/rmsNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_reshape_1_inputPlaceholder*'
_output_shapes
:?????????+*
dtype0*
shape:?????????+
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_reshape_1_inputconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biaslstm_1/lstm_cell_1/kernellstm_1/lstm_cell_1/bias#lstm_1/lstm_cell_1/recurrent_kerneldense_1/kerneldense_1/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_36260
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp#conv1d_3/kernel/Read/ReadVariableOp!conv1d_3/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpiter/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOprho/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'conv1d_2/kernel/rms/Read/ReadVariableOp%conv1d_2/bias/rms/Read/ReadVariableOp'conv1d_3/kernel/rms/Read/ReadVariableOp%conv1d_3/bias/rms/Read/ReadVariableOp&dense_1/kernel/rms/Read/ReadVariableOp$dense_1/bias/rms/Read/ReadVariableOp1lstm_1/lstm_cell_1/kernel/rms/Read/ReadVariableOp;lstm_1/lstm_cell_1/recurrent_kernel/rms/Read/ReadVariableOp/lstm_1/lstm_cell_1/bias/rms/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_38515
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biasdense_1/kerneldense_1/biasiterdecaylearning_ratemomentumrholstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastotalcounttotal_1count_1conv1d_2/kernel/rmsconv1d_2/bias/rmsconv1d_3/kernel/rmsconv1d_3/bias/rmsdense_1/kernel/rmsdense_1/bias/rmslstm_1/lstm_cell_1/kernel/rms'lstm_1/lstm_cell_1/recurrent_kernel/rmslstm_1/lstm_cell_1/bias/rms*'
Tin 
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_38606??#
?$
?
while_body_35172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_1_35196_0
while_lstm_cell_1_35198_0
while_lstm_cell_1_35200_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_1_35196
while_lstm_cell_1_35198
while_lstm_cell_1_35200??)while/lstm_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_35196_0while_lstm_cell_1_35198_0while_lstm_cell_1_35200_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_348012+
)while/lstm_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_35196while_lstm_cell_1_35196_0"4
while_lstm_cell_1_35198while_lstm_cell_1_35198_0"4
while_lstm_cell_1_35200while_lstm_cell_1_35200_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_35618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35618___redundant_placeholder03
/while_while_cond_35618___redundant_placeholder13
/while_while_cond_35618___redundant_placeholder23
/while_while_cond_35618___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36093
reshape_1_input
conv1d_2_35436
conv1d_2_35438
conv1d_3_35470
conv1d_3_35472
lstm_1_36044
lstm_1_36046
lstm_1_36048
dense_1_36087
dense_1_36089
identity?? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCallreshape_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_353992
reshape_1/PartitionedCall?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv1d_2_35436conv1d_2_35438*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_354252"
 conv1d_2/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_35470conv1d_3_35472*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_354592"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_346462!
max_pooling1d_1/PartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_1_36044lstm_1_36046lstm_1_36048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_357802 
lstm_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_360572
flatten_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_36087dense_1_36089*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_360762!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:X T
'
_output_shapes
:?????????+
)
_user_specified_namereshape_1_input
??
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36615

inputs8
4conv1d_2_conv1d_expanddims_1_readvariableop_resource,
(conv1d_2_biasadd_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource4
0lstm_1_lstm_cell_1_split_readvariableop_resource6
2lstm_1_lstm_cell_1_split_1_readvariableop_resource.
*lstm_1_lstm_cell_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?!lstm_1/lstm_cell_1/ReadVariableOp?#lstm_1/lstm_cell_1/ReadVariableOp_1?#lstm_1/lstm_cell_1/ReadVariableOp_2?#lstm_1/lstm_cell_1/ReadVariableOp_3?'lstm_1/lstm_cell_1/split/ReadVariableOp?)lstm_1/lstm_cell_1/split_1/ReadVariableOp?lstm_1/whileX
reshape_1/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_1/Shape?
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack?
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1?
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slice?
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shape?
reshape_1/ReshapeReshapeinputs reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????+2
reshape_1/Reshape?
conv1d_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_2/Pad/paddings?
conv1d_2/PadPadreshape_1/Reshape:output:0conv1d_2/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????-2
conv1d_2/Pad?
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_2/conv1d/ExpandDims/dim?
conv1d_2/conv1d/ExpandDims
ExpandDimsconv1d_2/Pad:output:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????-2
conv1d_2/conv1d/ExpandDims?
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dim?
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_2/conv1d/ExpandDims_1?
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+ *
paddingVALID*
strides
2
conv1d_2/conv1d?
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*+
_output_shapes
:?????????+ *
squeeze_dims

?????????2
conv1d_2/conv1d/Squeeze?
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOp?
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+ 2
conv1d_2/BiasAddw
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????+ 2
conv1d_2/Relu?
conv1d_3/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_3/Pad/paddings?
conv1d_3/PadPadconv1d_2/Relu:activations:0conv1d_3/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????- 2
conv1d_3/Pad?
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_3/conv1d/ExpandDims/dim?
conv1d_3/conv1d/ExpandDims
ExpandDimsconv1d_3/Pad:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????- 2
conv1d_3/conv1d/ExpandDims?
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dim?
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_3/conv1d/ExpandDims_1?
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+@*
paddingVALID*
strides
2
conv1d_3/conv1d?
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*+
_output_shapes
:?????????+@*
squeeze_dims

?????????2
conv1d_3/conv1d/Squeeze?
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_3/BiasAdd/ReadVariableOp?
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+@2
conv1d_3/BiasAddw
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????+@2
conv1d_3/Relu?
max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_1/ExpandDims/dim?
max_pooling1d_1/ExpandDims
ExpandDimsconv1d_3/Relu:activations:0'max_pooling1d_1/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????+@2
max_pooling1d_1/ExpandDims?
max_pooling1d_1/MaxPoolMaxPool#max_pooling1d_1/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling1d_1/MaxPool?
max_pooling1d_1/SqueezeSqueeze max_pooling1d_1/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
2
max_pooling1d_1/Squeezel
lstm_1/ShapeShape max_pooling1d_1/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_1/Shape?
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack?
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1?
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2?
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros/mul/y?
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/Less/y?
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros/packed/1?
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const?
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros_1/mul/y?
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/Less/y?
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros_1/packed/1?
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const?
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/zeros_1?
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm?
lstm_1/transpose	Transpose max_pooling1d_1/Squeeze:output:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1?
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack?
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1?
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2?
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1?
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_1/TensorArrayV2/element_shape?
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2?
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor?
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack?
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1?
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2?
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_1/strided_slice_2?
"lstm_1/lstm_cell_1/ones_like/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/ones_like/Shape?
"lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_1/lstm_cell_1/ones_like/Const?
lstm_1/lstm_cell_1/ones_likeFill+lstm_1/lstm_cell_1/ones_like/Shape:output:0+lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/ones_like?
 lstm_1/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2"
 lstm_1/lstm_cell_1/dropout/Const?
lstm_1/lstm_cell_1/dropout/MulMul%lstm_1/lstm_cell_1/ones_like:output:0)lstm_1/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/lstm_cell_1/dropout/Mul?
 lstm_1/lstm_cell_1/dropout/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_1/lstm_cell_1/dropout/Shape?
7lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform)lstm_1/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???29
7lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform?
)lstm_1/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)lstm_1/lstm_cell_1/dropout/GreaterEqual/y?
'lstm_1/lstm_cell_1/dropout/GreaterEqualGreaterEqual@lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform:output:02lstm_1/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2)
'lstm_1/lstm_cell_1/dropout/GreaterEqual?
lstm_1/lstm_cell_1/dropout/CastCast+lstm_1/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2!
lstm_1/lstm_cell_1/dropout/Cast?
 lstm_1/lstm_cell_1/dropout/Mul_1Mul"lstm_1/lstm_cell_1/dropout/Mul:z:0#lstm_1/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/lstm_cell_1/dropout/Mul_1?
"lstm_1/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_1/lstm_cell_1/dropout_1/Const?
 lstm_1/lstm_cell_1/dropout_1/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/lstm_cell_1/dropout_1/Mul?
"lstm_1/lstm_cell_1/dropout_1/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_1/Shape?
9lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2;
9lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2+
)lstm_1/lstm_cell_1/dropout_1/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_1/CastCast-lstm_1/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2#
!lstm_1/lstm_cell_1/dropout_1/Cast?
"lstm_1/lstm_cell_1/dropout_1/Mul_1Mul$lstm_1/lstm_cell_1/dropout_1/Mul:z:0%lstm_1/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/lstm_cell_1/dropout_1/Mul_1?
"lstm_1/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_1/lstm_cell_1/dropout_2/Const?
 lstm_1/lstm_cell_1/dropout_2/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/lstm_cell_1/dropout_2/Mul?
"lstm_1/lstm_cell_1/dropout_2/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_2/Shape?
9lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2ɬ42;
9lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2+
)lstm_1/lstm_cell_1/dropout_2/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_2/CastCast-lstm_1/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2#
!lstm_1/lstm_cell_1/dropout_2/Cast?
"lstm_1/lstm_cell_1/dropout_2/Mul_1Mul$lstm_1/lstm_cell_1/dropout_2/Mul:z:0%lstm_1/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/lstm_cell_1/dropout_2/Mul_1?
"lstm_1/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_1/lstm_cell_1/dropout_3/Const?
 lstm_1/lstm_cell_1/dropout_3/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/lstm_cell_1/dropout_3/Mul?
"lstm_1/lstm_cell_1/dropout_3/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_3/Shape?
9lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2;
9lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2+
)lstm_1/lstm_cell_1/dropout_3/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_3/CastCast-lstm_1/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2#
!lstm_1/lstm_cell_1/dropout_3/Cast?
"lstm_1/lstm_cell_1/dropout_3/Mul_1Mul$lstm_1/lstm_cell_1/dropout_3/Mul:z:0%lstm_1/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/lstm_cell_1/dropout_3/Mul_1v
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const?
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_1/split/split_dim?
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02)
'lstm_1/lstm_cell_1/split/ReadVariableOp?
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_1/lstm_cell_1/split?
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul?
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_1?
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_2?
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_3z
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const_1?
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_1/lstm_cell_1/split_1/split_dim?
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_1/lstm_cell_1/split_1/ReadVariableOp?
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_1/lstm_cell_1/split_1?
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd?
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd_1?
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd_2?
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd_3?
lstm_1/lstm_cell_1/mulMullstm_1/zeros:output:0$lstm_1/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul?
lstm_1/lstm_cell_1/mul_1Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_1?
lstm_1/lstm_cell_1/mul_2Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_2?
lstm_1/lstm_cell_1/mul_3Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_3?
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02#
!lstm_1/lstm_cell_1/ReadVariableOp?
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_1/lstm_cell_1/strided_slice/stack?
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2*
(lstm_1/lstm_cell_1/strided_slice/stack_1?
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice/stack_2?
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2"
 lstm_1/lstm_cell_1/strided_slice?
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/lstm_cell_1/mul:z:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_4?
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add?
lstm_1/lstm_cell_1/SigmoidSigmoidlstm_1/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Sigmoid?
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_1?
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2*
(lstm_1/lstm_cell_1/strided_slice_1/stack?
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_1?
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_2?
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_1?
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/lstm_cell_1/mul_1:z:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_5?
lstm_1/lstm_cell_1/add_1AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_1?
lstm_1/lstm_cell_1/Sigmoid_1Sigmoidlstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Sigmoid_1?
lstm_1/lstm_cell_1/mul_4Mul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_4?
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_2?
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(lstm_1/lstm_cell_1/strided_slice_2/stack?
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_1?
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_2?
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_2?
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/lstm_cell_1/mul_2:z:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_6?
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_2?
lstm_1/lstm_cell_1/TanhTanhlstm_1/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Tanh?
lstm_1/lstm_cell_1/mul_5Mullstm_1/lstm_cell_1/Sigmoid:y:0lstm_1/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_5?
lstm_1/lstm_cell_1/add_3AddV2lstm_1/lstm_cell_1/mul_4:z:0lstm_1/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_3?
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_3?
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(lstm_1/lstm_cell_1/strided_slice_3/stack?
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_1?
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_2?
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_3?
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/lstm_cell_1/mul_3:z:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_7?
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_4?
lstm_1/lstm_cell_1/Sigmoid_2Sigmoidlstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Sigmoid_2?
lstm_1/lstm_cell_1/Tanh_1Tanhlstm_1/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Tanh_1?
lstm_1/lstm_cell_1/mul_6Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_6?
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2&
$lstm_1/TensorArrayV2_1/element_shape?
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time?
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter?
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_1_while_body_36445*#
condR
lstm_1_while_cond_36444*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
lstm_1/while?
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack?
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_1/strided_slice_3/stack?
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1?
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2?
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
lstm_1/strided_slice_3?
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm?
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????F   2
flatten_1/Const?
flatten_1/ReshapeReshapelstm_1/strided_slice_3:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:F
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0 ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?H
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_34878

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapestates*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
	ones_likeP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:?????????F2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:?????????F2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:?????????F2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:?????????F2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????F2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????F2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????F2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????F2
	BiasAdd_3_
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:?????????F2
mulc
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:?????????F2
mul_1c
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:?????????F2
mul_2c
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:?????????F2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????F2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????F2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????F2
Tanh^
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????F2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:?????????F2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????F2
Tanh_1b
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
mul_6?
IdentityIdentity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity?

Identity_1Identity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:?????????@:?????????F:?????????F:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????F
 
_user_specified_namestates:OK
'
_output_shapes
:?????????F
 
_user_specified_namestates
?
|
'__inference_dense_1_layer_call_fn_38191

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_360762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????F::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????F
 
_user_specified_nameinputs
?
?
,__inference_sequential_1_layer_call_fn_36175
reshape_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallreshape_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_361542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????+
)
_user_specified_namereshape_1_input
پ
?
$sequential_1_lstm_1_while_body_34499D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0I
Esequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0K
Gsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0C
?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorG
Csequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resourceI
Esequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceA
=sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource??4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp?6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1?6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2?6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3?:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp?<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem?
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ShapeShape'sequential_1_lstm_1_while_placeholder_2*
T0*
_output_shapes
:27
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/Shape?
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/Const?
/sequential_1/lstm_1/while/lstm_cell_1/ones_likeFill>sequential_1/lstm_1/while/lstm_cell_1/ones_like/Shape:output:0>sequential_1/lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F21
/sequential_1/lstm_1/while/lstm_cell_1/ones_like?
+sequential_1/lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/lstm_1/while/lstm_cell_1/Const?
5sequential_1/lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_1/while/lstm_cell_1/split/split_dim?
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOpEsequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02<
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp?
+sequential_1/lstm_1/while/lstm_cell_1/splitSplit>sequential_1/lstm_1/while/lstm_cell_1/split/split_dim:output:0Bsequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2-
+sequential_1/lstm_1/while/lstm_cell_1/split?
,sequential_1/lstm_1/while/lstm_cell_1/MatMulMatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2.
,sequential_1/lstm_1/while/lstm_cell_1/MatMul?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_1MatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_1?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_2MatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_2?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_3MatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_1/lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_3?
-sequential_1/lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_1/lstm_1/while/lstm_cell_1/Const_1?
7sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dim?
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
-sequential_1/lstm_1/while/lstm_cell_1/split_1Split@sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dim:output:0Dsequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2/
-sequential_1/lstm_1/while/lstm_cell_1/split_1?
-sequential_1/lstm_1/while/lstm_cell_1/BiasAddBiasAdd6sequential_1/lstm_1/while/lstm_cell_1/MatMul:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2/
-sequential_1/lstm_1/while/lstm_cell_1/BiasAdd?
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_1:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F21
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1?
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_2:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F21
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2?
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_3:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F21
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3?
)sequential_1/lstm_1/while/lstm_cell_1/mulMul'sequential_1_lstm_1_while_placeholder_28sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/while/lstm_cell_1/mul?
+sequential_1/lstm_1/while/lstm_cell_1/mul_1Mul'sequential_1_lstm_1_while_placeholder_28sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_1?
+sequential_1/lstm_1/while/lstm_cell_1/mul_2Mul'sequential_1_lstm_1_while_placeholder_28sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_2?
+sequential_1/lstm_1/while/lstm_cell_1/mul_3Mul'sequential_1_lstm_1_while_placeholder_28sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_3?
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype026
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp?
9sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2?
3sequential_1/lstm_1/while/lstm_cell_1/strided_sliceStridedSlice<sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp:value:0Bsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack:output:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask25
3sequential_1/lstm_1/while/lstm_cell_1/strided_slice?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_4MatMul-sequential_1/lstm_1/while/lstm_cell_1/mul:z:0<sequential_1/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_4?
)sequential_1/lstm_1/while/lstm_cell_1/addAddV26sequential_1/lstm_1/while/lstm_cell_1/BiasAdd:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/while/lstm_cell_1/add?
-sequential_1/lstm_1/while/lstm_cell_1/SigmoidSigmoid-sequential_1/lstm_1/while/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2/
-sequential_1/lstm_1/while/lstm_cell_1/Sigmoid?
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2?
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_5MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_1:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_5?
+sequential_1/lstm_1/while/lstm_cell_1/add_1AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/add_1?
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid/sequential_1/lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F21
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1?
+sequential_1/lstm_1/while/lstm_cell_1/mul_4Mul3sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_4?
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2?
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_6MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_2:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_6?
+sequential_1/lstm_1/while/lstm_cell_1/add_2AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/add_2?
*sequential_1/lstm_1/while/lstm_cell_1/TanhTanh/sequential_1/lstm_1/while/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2,
*sequential_1/lstm_1/while/lstm_cell_1/Tanh?
+sequential_1/lstm_1/while/lstm_cell_1/mul_5Mul1sequential_1/lstm_1/while/lstm_cell_1/Sigmoid:y:0.sequential_1/lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_5?
+sequential_1/lstm_1/while/lstm_cell_1/add_3AddV2/sequential_1/lstm_1/while/lstm_cell_1/mul_4:z:0/sequential_1/lstm_1/while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/add_3?
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2?
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_7MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_3:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_7?
+sequential_1/lstm_1/while/lstm_cell_1/add_4AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/add_4?
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid/sequential_1/lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F21
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2?
,sequential_1/lstm_1/while/lstm_cell_1/Tanh_1Tanh/sequential_1/lstm_1/while/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2.
,sequential_1/lstm_1/while/lstm_cell_1/Tanh_1?
+sequential_1/lstm_1/while/lstm_cell_1/mul_6Mul3sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2:y:00sequential_1/lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_6?
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder/sequential_1/lstm_1/while/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem?
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/y?
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/add?
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/y?
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1?
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity?
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations5^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1?
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2?
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3?
$sequential_1/lstm_1/while/Identity_4Identity/sequential_1/lstm_1/while/lstm_cell_1/mul_6:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2&
$sequential_1/lstm_1/while/Identity_4?
$sequential_1/lstm_1/while/Identity_5Identity/sequential_1/lstm_1/while/lstm_cell_1/add_3:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"?
=sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0"?
Esequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"?
Csequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resourceEsequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"?
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"?
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2l
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp2p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_16sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_12p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_26sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_22p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_36sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_32x
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_37168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/ones_like?
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_1/dropout/Const?
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/dropout/Mul?
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape?
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform?
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_1/dropout/GreaterEqual/y?
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2(
&while/lstm_cell_1/dropout/GreaterEqual?
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2 
while/lstm_cell_1/dropout/Cast?
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout/Mul_1?
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_1/Const?
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_1/Mul?
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape?
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y?
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_1/GreaterEqual?
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_1/Cast?
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_1/Mul_1?
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_2/Const?
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_2/Mul?
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape?
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2??72:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y?
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_2/GreaterEqual?
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_2/Cast?
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_2/Mul_1?
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_3/Const?
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_3/Mul?
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape?
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2ᓹ2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y?
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_3/GreaterEqual?
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_3/Cast?
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_3/Mul_1t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mulMulwhile_placeholder_2#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mulwhile_placeholder_2%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mulwhile_placeholder_2%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mulwhile_placeholder_2%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_3?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_1:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_4Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_4?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_2:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_5Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_5?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_4:z:0while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_3:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_6Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_6:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_lstm_1_layer_call_fn_37592
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_353732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36154

inputs
conv1d_2_36129
conv1d_2_36131
conv1d_3_36134
conv1d_3_36136
lstm_1_36140
lstm_1_36142
lstm_1_36144
dense_1_36148
dense_1_36150
identity?? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_353992
reshape_1/PartitionedCall?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv1d_2_36129conv1d_2_36131*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_354252"
 conv1d_2/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_36134conv1d_3_36136*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_354592"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_346462!
max_pooling1d_1/PartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_1_36140lstm_1_36142lstm_1_36144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_357802 
lstm_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_360572
flatten_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_36148dense_1_36150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_360762!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_36057

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????F   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????F2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????F:O K
'
_output_shapes
:?????????F
 
_user_specified_nameinputs
?
?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_35425

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????-2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????-2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+ *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????+ *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????+ 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????+ 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????+::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
?
while_cond_35171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35171___redundant_placeholder03
/while_while_cond_35171___redundant_placeholder13
/while_while_cond_35171___redundant_placeholder23
/while_while_cond_35171___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?H
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_38377

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpZ
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
	ones_likeP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:?????????F2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:?????????F2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:?????????F2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:?????????F2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????F2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????F2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????F2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????F2
	BiasAdd_3a
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:?????????F2
mule
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:?????????F2
mul_1e
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:?????????F2
mul_2e
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:?????????F2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????F2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????F2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????F2
Tanh^
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????F2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:?????????F2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????F2
Tanh_1b
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
mul_6?
IdentityIdentity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity?

Identity_1Identity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:?????????@:?????????F:?????????F:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/1
??
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37897

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2x
lstm_cell_1/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout/Const?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Mul?
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shape?
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???22
0lstm_cell_1/dropout/random_uniform/RandomUniform?
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_1/dropout/GreaterEqual/y?
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_cell_1/dropout/GreaterEqual?
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Cast?
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_1/Const?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Mul?
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shape?
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform?
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_1/GreaterEqual/y?
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_1/GreaterEqual?
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Cast?
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_2/Const?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Mul?
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape?
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform?
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_2/GreaterEqual/y?
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_2/GreaterEqual?
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Cast?
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_3/Const?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Mul?
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shape?
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2ᾷ24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform?
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_3/GreaterEqual/y?
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_3/GreaterEqual?
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Cast?
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Mul_1h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mulMulzeros:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulzeros:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulzeros:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulzeros:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_3?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_1:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_4Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_4?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_2:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh?
lstm_cell_1/mul_5Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_5?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_4:z:0lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_3:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_6Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_37736*
condR
while_cond_37735*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_37440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_37440___redundant_placeholder03
/while_while_cond_37440___redundant_placeholder13
/while_while_cond_37440___redundant_placeholder23
/while_while_cond_37440___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
??
?
while_body_37441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/ones_liket
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mulMulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_3?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_1:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_4Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_4?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_2:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_5Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_5?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_4:z:0while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_3:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_6Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_6:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
$sequential_1_lstm_1_while_cond_34498D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_34498___redundant_placeholder0[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_34498___redundant_placeholder1[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_34498___redundant_placeholder2[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_34498___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
?
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/Less?
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
??
?
while_body_38009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/ones_liket
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mulMulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_3?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_1:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_4Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_4?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_2:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_5Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_5?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_4:z:0while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_3:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_6Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_6:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_38008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_38008___redundant_placeholder03
/while_while_cond_38008___redundant_placeholder13
/while_while_cond_38008___redundant_placeholder23
/while_while_cond_38008___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?D
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_35373

inputs
lstm_cell_1_35291
lstm_cell_1_35293
lstm_cell_1_35295
identity??#lstm_cell_1/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_35291lstm_cell_1_35293lstm_cell_1_35295*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_348782%
#lstm_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_35291lstm_cell_1_35293lstm_cell_1_35295*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35304*
condR
while_cond_35303*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_1/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????@:::2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
,__inference_sequential_1_layer_call_fn_36227
reshape_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallreshape_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_362062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????+
)
_user_specified_namereshape_1_input
??
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_36021

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2x
lstm_cell_1/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/ones_likeh
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mulMulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_3?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_1:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_4Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_4?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_2:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh?
lstm_cell_1/mul_5Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_5?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_4:z:0lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_3:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_6Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35892*
condR
while_cond_35891*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_lstm_cell_1_layer_call_fn_38394

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_348012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:?????????@:?????????F:?????????F:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/1
??
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_35780

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2x
lstm_cell_1/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout/Const?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Mul?
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shape?
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???22
0lstm_cell_1/dropout/random_uniform/RandomUniform?
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_1/dropout/GreaterEqual/y?
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_cell_1/dropout/GreaterEqual?
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Cast?
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_1/Const?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Mul?
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shape?
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform?
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_1/GreaterEqual/y?
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_1/GreaterEqual?
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Cast?
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_2/Const?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Mul?
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape?
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform?
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_2/GreaterEqual/y?
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_2/GreaterEqual?
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Cast?
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_3/Const?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Mul?
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shape?
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform?
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_3/GreaterEqual/y?
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_3/GreaterEqual?
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Cast?
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Mul_1h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mulMulzeros:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulzeros:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulzeros:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulzeros:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_3?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_1:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_4Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_4?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_2:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh?
lstm_cell_1/mul_5Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_5?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_4:z:0lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_3:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_6Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35619*
condR
while_cond_35618*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37329
inputs_0-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2x
lstm_cell_1/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout/Const?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Mul?
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shape?
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2?޴22
0lstm_cell_1/dropout/random_uniform/RandomUniform?
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_1/dropout/GreaterEqual/y?
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_cell_1/dropout/GreaterEqual?
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Cast?
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_1/Const?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Mul?
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shape?
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform?
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_1/GreaterEqual/y?
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_1/GreaterEqual?
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Cast?
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_2/Const?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Mul?
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape?
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2??s24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform?
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_2/GreaterEqual/y?
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_2/GreaterEqual?
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Cast?
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_1/dropout_3/Const?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Mul?
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shape?
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform?
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_1/dropout_3/GreaterEqual/y?
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_cell_1/dropout_3/GreaterEqual?
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Cast?
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/dropout_3/Mul_1h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mulMulzeros:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulzeros:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulzeros:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulzeros:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_3?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_1:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_4Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_4?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_2:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh?
lstm_cell_1/mul_5Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_5?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_4:z:0lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_3:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_6Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_37168*
condR
while_cond_37167*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????@:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_36988

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????-2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????-2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+ *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????+ *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????+ 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????+ 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????+::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_35399

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicem
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????+2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????+:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?D
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_35241

inputs
lstm_cell_1_35159
lstm_cell_1_35161
lstm_cell_1_35163
identity??#lstm_cell_1/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_35159lstm_cell_1_35161lstm_cell_1_35163*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_348012%
#lstm_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_35159lstm_cell_1_35161lstm_cell_1_35163*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35172*
condR
while_cond_35171*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_1/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????@:::2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?<
?
__inference__traced_save_38515
file_prefix.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop.
*savev2_conv1d_3_kernel_read_readvariableop,
(savev2_conv1d_3_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop#
savev2_iter_read_readvariableop	$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop"
savev2_rho_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_conv1d_2_kernel_rms_read_readvariableop0
,savev2_conv1d_2_bias_rms_read_readvariableop2
.savev2_conv1d_3_kernel_rms_read_readvariableop0
,savev2_conv1d_3_bias_rms_read_readvariableop1
-savev2_dense_1_kernel_rms_read_readvariableop/
+savev2_dense_1_bias_rms_read_readvariableop<
8savev2_lstm_1_lstm_cell_1_kernel_rms_read_readvariableopF
Bsavev2_lstm_1_lstm_cell_1_recurrent_kernel_rms_read_readvariableop:
6savev2_lstm_1_lstm_cell_1_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop*savev2_conv1d_3_kernel_read_readvariableop(savev2_conv1d_3_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopsavev2_iter_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableopsavev2_rho_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_conv1d_2_kernel_rms_read_readvariableop,savev2_conv1d_2_bias_rms_read_readvariableop.savev2_conv1d_3_kernel_rms_read_readvariableop,savev2_conv1d_3_bias_rms_read_readvariableop-savev2_dense_1_kernel_rms_read_readvariableop+savev2_dense_1_bias_rms_read_readvariableop8savev2_lstm_1_lstm_cell_1_kernel_rms_read_readvariableopBsavev2_lstm_1_lstm_cell_1_recurrent_kernel_rms_read_readvariableop6savev2_lstm_1_lstm_cell_1_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:F
:
: : : : : :	@?:	F?:?: : : : : : : @:@:F
:
:	@?:	F?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:F
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@?:%!

_output_shapes
:	F?:!

_output_shapes	
:?:
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
: :($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:F
: 

_output_shapes
:
:%!

_output_shapes
:	@?:%!

_output_shapes
:	F?:!

_output_shapes	
:?:

_output_shapes
: 
?
}
(__inference_conv1d_3_layer_call_fn_37024

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_354592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????+@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????+ ::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????+ 
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_38182

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:F
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????F::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????F
 
_user_specified_nameinputs
?
?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_35459

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????- 2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????- 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????+@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????+@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????+@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????+ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????+ 
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36122
reshape_1_input
conv1d_2_36097
conv1d_2_36099
conv1d_3_36102
conv1d_3_36104
lstm_1_36108
lstm_1_36110
lstm_1_36112
dense_1_36116
dense_1_36118
identity?? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCallreshape_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_353992
reshape_1/PartitionedCall?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv1d_2_36097conv1d_2_36099*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_354252"
 conv1d_2/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_36102conv1d_3_36104*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_354592"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_346462!
max_pooling1d_1/PartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_1_36108lstm_1_36110lstm_1_36112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_360212 
lstm_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_360572
flatten_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_36116dense_1_36118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_360762!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:X T
'
_output_shapes
:?????????+
)
_user_specified_namereshape_1_input
??
?

 __inference__wrapped_model_34637
reshape_1_inputE
Asequential_1_conv1d_2_conv1d_expanddims_1_readvariableop_resource9
5sequential_1_conv1d_2_biasadd_readvariableop_resourceE
Asequential_1_conv1d_3_conv1d_expanddims_1_readvariableop_resource9
5sequential_1_conv1d_3_biasadd_readvariableop_resourceA
=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resourceC
?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource;
7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource7
3sequential_1_dense_1_matmul_readvariableop_resource8
4sequential_1_dense_1_biasadd_readvariableop_resource
identity??,sequential_1/conv1d_2/BiasAdd/ReadVariableOp?8sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?,sequential_1/conv1d_3/BiasAdd/ReadVariableOp?8sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp?0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1?0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2?0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3?4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp?6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp?sequential_1/lstm_1/while{
sequential_1/reshape_1/ShapeShapereshape_1_input*
T0*
_output_shapes
:2
sequential_1/reshape_1/Shape?
*sequential_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_1/reshape_1/strided_slice/stack?
,sequential_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_1/strided_slice/stack_1?
,sequential_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_1/strided_slice/stack_2?
$sequential_1/reshape_1/strided_sliceStridedSlice%sequential_1/reshape_1/Shape:output:03sequential_1/reshape_1/strided_slice/stack:output:05sequential_1/reshape_1/strided_slice/stack_1:output:05sequential_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_1/reshape_1/strided_slice?
&sequential_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&sequential_1/reshape_1/Reshape/shape/1?
&sequential_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/reshape_1/Reshape/shape/2?
$sequential_1/reshape_1/Reshape/shapePack-sequential_1/reshape_1/strided_slice:output:0/sequential_1/reshape_1/Reshape/shape/1:output:0/sequential_1/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/reshape_1/Reshape/shape?
sequential_1/reshape_1/ReshapeReshapereshape_1_input-sequential_1/reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????+2 
sequential_1/reshape_1/Reshape?
"sequential_1/conv1d_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2$
"sequential_1/conv1d_2/Pad/paddings?
sequential_1/conv1d_2/PadPad'sequential_1/reshape_1/Reshape:output:0+sequential_1/conv1d_2/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????-2
sequential_1/conv1d_2/Pad?
+sequential_1/conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential_1/conv1d_2/conv1d/ExpandDims/dim?
'sequential_1/conv1d_2/conv1d/ExpandDims
ExpandDims"sequential_1/conv1d_2/Pad:output:04sequential_1/conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????-2)
'sequential_1/conv1d_2/conv1d/ExpandDims?
8sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_1_conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02:
8sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?
-sequential_1/conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_1/conv1d_2/conv1d/ExpandDims_1/dim?
)sequential_1/conv1d_2/conv1d/ExpandDims_1
ExpandDims@sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_1/conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2+
)sequential_1/conv1d_2/conv1d/ExpandDims_1?
sequential_1/conv1d_2/conv1dConv2D0sequential_1/conv1d_2/conv1d/ExpandDims:output:02sequential_1/conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+ *
paddingVALID*
strides
2
sequential_1/conv1d_2/conv1d?
$sequential_1/conv1d_2/conv1d/SqueezeSqueeze%sequential_1/conv1d_2/conv1d:output:0*
T0*+
_output_shapes
:?????????+ *
squeeze_dims

?????????2&
$sequential_1/conv1d_2/conv1d/Squeeze?
,sequential_1/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv1d_2/BiasAdd/ReadVariableOp?
sequential_1/conv1d_2/BiasAddBiasAdd-sequential_1/conv1d_2/conv1d/Squeeze:output:04sequential_1/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+ 2
sequential_1/conv1d_2/BiasAdd?
sequential_1/conv1d_2/ReluRelu&sequential_1/conv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????+ 2
sequential_1/conv1d_2/Relu?
"sequential_1/conv1d_3/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2$
"sequential_1/conv1d_3/Pad/paddings?
sequential_1/conv1d_3/PadPad(sequential_1/conv1d_2/Relu:activations:0+sequential_1/conv1d_3/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????- 2
sequential_1/conv1d_3/Pad?
+sequential_1/conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential_1/conv1d_3/conv1d/ExpandDims/dim?
'sequential_1/conv1d_3/conv1d/ExpandDims
ExpandDims"sequential_1/conv1d_3/Pad:output:04sequential_1/conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????- 2)
'sequential_1/conv1d_3/conv1d/ExpandDims?
8sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_1_conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02:
8sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?
-sequential_1/conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_1/conv1d_3/conv1d/ExpandDims_1/dim?
)sequential_1/conv1d_3/conv1d/ExpandDims_1
ExpandDims@sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_1/conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2+
)sequential_1/conv1d_3/conv1d/ExpandDims_1?
sequential_1/conv1d_3/conv1dConv2D0sequential_1/conv1d_3/conv1d/ExpandDims:output:02sequential_1/conv1d_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+@*
paddingVALID*
strides
2
sequential_1/conv1d_3/conv1d?
$sequential_1/conv1d_3/conv1d/SqueezeSqueeze%sequential_1/conv1d_3/conv1d:output:0*
T0*+
_output_shapes
:?????????+@*
squeeze_dims

?????????2&
$sequential_1/conv1d_3/conv1d/Squeeze?
,sequential_1/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv1d_3/BiasAdd/ReadVariableOp?
sequential_1/conv1d_3/BiasAddBiasAdd-sequential_1/conv1d_3/conv1d/Squeeze:output:04sequential_1/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+@2
sequential_1/conv1d_3/BiasAdd?
sequential_1/conv1d_3/ReluRelu&sequential_1/conv1d_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????+@2
sequential_1/conv1d_3/Relu?
+sequential_1/max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/max_pooling1d_1/ExpandDims/dim?
'sequential_1/max_pooling1d_1/ExpandDims
ExpandDims(sequential_1/conv1d_3/Relu:activations:04sequential_1/max_pooling1d_1/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????+@2)
'sequential_1/max_pooling1d_1/ExpandDims?
$sequential_1/max_pooling1d_1/MaxPoolMaxPool0sequential_1/max_pooling1d_1/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling1d_1/MaxPool?
$sequential_1/max_pooling1d_1/SqueezeSqueeze-sequential_1/max_pooling1d_1/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
2&
$sequential_1/max_pooling1d_1/Squeeze?
sequential_1/lstm_1/ShapeShape-sequential_1/max_pooling1d_1/Squeeze:output:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape?
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack?
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1?
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2?
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice?
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2!
sequential_1/lstm_1/zeros/mul/y?
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul?
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_1/lstm_1/zeros/Less/y?
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less?
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2$
"sequential_1/lstm_1/zeros/packed/1?
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed?
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/Const?
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
sequential_1/lstm_1/zeros?
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2#
!sequential_1/lstm_1/zeros_1/mul/y?
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul?
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_1/zeros_1/Less/y?
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less?
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2&
$sequential_1/lstm_1/zeros_1/packed/1?
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed?
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/Const?
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
sequential_1/lstm_1/zeros_1?
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/perm?
sequential_1/lstm_1/transpose	Transpose-sequential_1/max_pooling1d_1/Squeeze:output:0+sequential_1/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@2
sequential_1/lstm_1/transpose?
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1?
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stack?
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1?
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2?
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1?
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_1/lstm_1/TensorArrayV2/element_shape?
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2?
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor?
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stack?
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1?
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2?
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2?
/sequential_1/lstm_1/lstm_cell_1/ones_like/ShapeShape"sequential_1/lstm_1/zeros:output:0*
T0*
_output_shapes
:21
/sequential_1/lstm_1/lstm_cell_1/ones_like/Shape?
/sequential_1/lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_1/lstm_1/lstm_cell_1/ones_like/Const?
)sequential_1/lstm_1/lstm_cell_1/ones_likeFill8sequential_1/lstm_1/lstm_cell_1/ones_like/Shape:output:08sequential_1/lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/lstm_cell_1/ones_like?
%sequential_1/lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/lstm_1/lstm_cell_1/Const?
/sequential_1/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_1/lstm_cell_1/split/split_dim?
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp?
%sequential_1/lstm_1/lstm_cell_1/splitSplit8sequential_1/lstm_1/lstm_cell_1/split/split_dim:output:0<sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2'
%sequential_1/lstm_1/lstm_cell_1/split?
&sequential_1/lstm_1/lstm_cell_1/MatMulMatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2(
&sequential_1/lstm_1/lstm_cell_1/MatMul?
(sequential_1/lstm_1/lstm_cell_1/MatMul_1MatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_1?
(sequential_1/lstm_1/lstm_cell_1/MatMul_2MatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_2?
(sequential_1/lstm_1/lstm_cell_1/MatMul_3MatMul,sequential_1/lstm_1/strided_slice_2:output:0.sequential_1/lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_3?
'sequential_1/lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/lstm_1/lstm_cell_1/Const_1?
1sequential_1/lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_1/lstm_1/lstm_cell_1/split_1/split_dim?
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp?
'sequential_1/lstm_1/lstm_cell_1/split_1Split:sequential_1/lstm_1/lstm_cell_1/split_1/split_dim:output:0>sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2)
'sequential_1/lstm_1/lstm_cell_1/split_1?
'sequential_1/lstm_1/lstm_cell_1/BiasAddBiasAdd0sequential_1/lstm_1/lstm_cell_1/MatMul:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2)
'sequential_1/lstm_1/lstm_cell_1/BiasAdd?
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_1BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_1:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_1?
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_2BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_2:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_2?
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_3BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_3:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_3?
#sequential_1/lstm_1/lstm_cell_1/mulMul"sequential_1/lstm_1/zeros:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2%
#sequential_1/lstm_1/lstm_cell_1/mul?
%sequential_1/lstm_1/lstm_cell_1/mul_1Mul"sequential_1/lstm_1/zeros:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/mul_1?
%sequential_1/lstm_1/lstm_cell_1/mul_2Mul"sequential_1/lstm_1/zeros:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/mul_2?
%sequential_1/lstm_1/lstm_cell_1/mul_3Mul"sequential_1/lstm_1/zeros:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/mul_3?
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype020
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp?
3sequential_1/lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_1/lstm_1/lstm_cell_1/strided_slice/stack?
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1?
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2?
-sequential_1/lstm_1/lstm_cell_1/strided_sliceStridedSlice6sequential_1/lstm_1/lstm_cell_1/ReadVariableOp:value:0<sequential_1/lstm_1/lstm_cell_1/strided_slice/stack:output:0>sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1:output:0>sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2/
-sequential_1/lstm_1/lstm_cell_1/strided_slice?
(sequential_1/lstm_1/lstm_cell_1/MatMul_4MatMul'sequential_1/lstm_1/lstm_cell_1/mul:z:06sequential_1/lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_4?
#sequential_1/lstm_1/lstm_cell_1/addAddV20sequential_1/lstm_1/lstm_cell_1/BiasAdd:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2%
#sequential_1/lstm_1/lstm_cell_1/add?
'sequential_1/lstm_1/lstm_cell_1/SigmoidSigmoid'sequential_1/lstm_1/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2)
'sequential_1/lstm_1/lstm_cell_1/Sigmoid?
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1?
5sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2?
/sequential_1/lstm_1/lstm_cell_1/strided_slice_1StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_1?
(sequential_1/lstm_1/lstm_cell_1/MatMul_5MatMul)sequential_1/lstm_1/lstm_cell_1/mul_1:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_5?
%sequential_1/lstm_1/lstm_cell_1/add_1AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_1:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/add_1?
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid)sequential_1/lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_1?
%sequential_1/lstm_1/lstm_cell_1/mul_4Mul-sequential_1/lstm_1/lstm_cell_1/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/mul_4?
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2?
5sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2?
/sequential_1/lstm_1/lstm_cell_1/strided_slice_2StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_2?
(sequential_1/lstm_1/lstm_cell_1/MatMul_6MatMul)sequential_1/lstm_1/lstm_cell_1/mul_2:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_6?
%sequential_1/lstm_1/lstm_cell_1/add_2AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_2:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/add_2?
$sequential_1/lstm_1/lstm_cell_1/TanhTanh)sequential_1/lstm_1/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2&
$sequential_1/lstm_1/lstm_cell_1/Tanh?
%sequential_1/lstm_1/lstm_cell_1/mul_5Mul+sequential_1/lstm_1/lstm_cell_1/Sigmoid:y:0(sequential_1/lstm_1/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/mul_5?
%sequential_1/lstm_1/lstm_cell_1/add_3AddV2)sequential_1/lstm_1/lstm_cell_1/mul_4:z:0)sequential_1/lstm_1/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/add_3?
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3?
5sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2?
/sequential_1/lstm_1/lstm_cell_1/strided_slice_3StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_3?
(sequential_1/lstm_1/lstm_cell_1/MatMul_7MatMul)sequential_1/lstm_1/lstm_cell_1/mul_3:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_7?
%sequential_1/lstm_1/lstm_cell_1/add_4AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_3:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/add_4?
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid)sequential_1/lstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2+
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_2?
&sequential_1/lstm_1/lstm_cell_1/Tanh_1Tanh)sequential_1/lstm_1/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2(
&sequential_1/lstm_1/lstm_cell_1/Tanh_1?
%sequential_1/lstm_1/lstm_cell_1/mul_6Mul-sequential_1/lstm_1/lstm_cell_1/Sigmoid_2:y:0*sequential_1/lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2'
%sequential_1/lstm_1/lstm_cell_1/mul_6?
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shape?
#sequential_1/lstm_1/TensorArrayV2_1TensorListReserve:sequential_1/lstm_1/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_1/TensorArrayV2_1v
sequential_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_1/time?
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_1/lstm_1/while/maximum_iterations?
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter?
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resource?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_lstm_1_while_body_34499*0
cond(R&
$sequential_1_lstm_1_while_cond_34498*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
sequential_1/lstm_1/while?
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack?
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_1/lstm_1/strided_slice_3/stack?
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1?
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2?
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3?
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/perm?
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2!
sequential_1/lstm_1/transpose_1?
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtime?
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????F   2
sequential_1/flatten_1/Const?
sequential_1/flatten_1/ReshapeReshape,sequential_1/lstm_1/strided_slice_3:output:0%sequential_1/flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????F2 
sequential_1/flatten_1/Reshape?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:F
*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/SoftmaxSoftmax%sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential_1/dense_1/Softmax?
IdentityIdentity&sequential_1/dense_1/Softmax:softmax:0-^sequential_1/conv1d_2/BiasAdd/ReadVariableOp9^sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp-^sequential_1/conv1d_3/BiasAdd/ReadVariableOp9^sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp/^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp1^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_11^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_21^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_35^sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp^sequential_1/lstm_1/while*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2\
,sequential_1/conv1d_2/BiasAdd/ReadVariableOp,sequential_1/conv1d_2/BiasAdd/ReadVariableOp2t
8sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp8sequential_1/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_1/conv1d_3/BiasAdd/ReadVariableOp,sequential_1/conv1d_3/BiasAdd/ReadVariableOp2t
8sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp8sequential_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2`
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp2d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_10sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_12d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_20sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_22d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_30sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_32l
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while:X T
'
_output_shapes
:?????????+
)
_user_specified_namereshape_1_input
??
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37570
inputs_0-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2x
lstm_cell_1/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/ones_likeh
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mulMulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_3?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_1:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_4Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_4?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_2:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh?
lstm_cell_1/mul_5Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_5?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_4:z:0lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_3:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_6Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_37441*
condR
while_cond_37440*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????@:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?r
?
!__inference__traced_restore_38606
file_prefix$
 assignvariableop_conv1d_2_kernel$
 assignvariableop_1_conv1d_2_bias&
"assignvariableop_2_conv1d_3_kernel$
 assignvariableop_3_conv1d_3_bias%
!assignvariableop_4_dense_1_kernel#
assignvariableop_5_dense_1_bias
assignvariableop_6_iter
assignvariableop_7_decay$
 assignvariableop_8_learning_rate
assignvariableop_9_momentum
assignvariableop_10_rho1
-assignvariableop_11_lstm_1_lstm_cell_1_kernel;
7assignvariableop_12_lstm_1_lstm_cell_1_recurrent_kernel/
+assignvariableop_13_lstm_1_lstm_cell_1_bias
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_1+
'assignvariableop_18_conv1d_2_kernel_rms)
%assignvariableop_19_conv1d_2_bias_rms+
'assignvariableop_20_conv1d_3_kernel_rms)
%assignvariableop_21_conv1d_3_bias_rms*
&assignvariableop_22_dense_1_kernel_rms(
$assignvariableop_23_dense_1_bias_rms5
1assignvariableop_24_lstm_1_lstm_cell_1_kernel_rms?
;assignvariableop_25_lstm_1_lstm_cell_1_recurrent_kernel_rms3
/assignvariableop_26_lstm_1_lstm_cell_1_bias_rms
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv1d_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_rhoIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_1_lstm_cell_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_lstm_1_lstm_cell_1_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp+assignvariableop_13_lstm_1_lstm_cell_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_conv1d_2_kernel_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_conv1d_2_bias_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_conv1d_3_kernel_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp%assignvariableop_21_conv1d_3_bias_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp&assignvariableop_22_dense_1_kernel_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_dense_1_bias_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_lstm_1_lstm_cell_1_kernel_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp;assignvariableop_25_lstm_1_lstm_cell_1_recurrent_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp/assignvariableop_26_lstm_1_lstm_cell_1_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*?
_input_shapesp
n: :::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262(
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
?
?
&__inference_lstm_1_layer_call_fn_37581
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_352412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?l
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_38300

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpZ
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2??f2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2֕?2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout_3/Mul_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:?????????F2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:?????????F2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:?????????F2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:?????????F2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????F2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????F2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????F2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????F2
	BiasAdd_3`
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mulf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mul_1f
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mul_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????F2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????F2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????F2
Tanh^
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????F2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:?????????F2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????F2
Tanh_1b
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
mul_6?
IdentityIdentity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity?

Identity_1Identity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:?????????@:?????????F:?????????F:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/1
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_36076

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:F
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????F::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????F
 
_user_specified_nameinputs
??
?

lstm_1_while_body_36768*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0>
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_06
2lstm_1_while_lstm_cell_1_readvariableop_resource_0
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor:
6lstm_1_while_lstm_cell_1_split_readvariableop_resource<
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource4
0lstm_1_while_lstm_cell_1_readvariableop_resource??'lstm_1/while/lstm_cell_1/ReadVariableOp?)lstm_1/while/lstm_cell_1/ReadVariableOp_1?)lstm_1/while/lstm_cell_1/ReadVariableOp_2?)lstm_1/while/lstm_cell_1/ReadVariableOp_3?-lstm_1/while/lstm_cell_1/split/ReadVariableOp?/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem?
(lstm_1/while/lstm_cell_1/ones_like/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/ones_like/Shape?
(lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_1/while/lstm_cell_1/ones_like/Const?
"lstm_1/while/lstm_cell_1/ones_likeFill1lstm_1/while/lstm_cell_1/ones_like/Shape:output:01lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/ones_like?
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_1/while/lstm_cell_1/Const?
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_1/split/split_dim?
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02/
-lstm_1/while/lstm_cell_1/split/ReadVariableOp?
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2 
lstm_1/while/lstm_cell_1/split?
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2!
lstm_1/while/lstm_cell_1/MatMul?
!lstm_1/while/lstm_cell_1/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_1?
!lstm_1/while/lstm_cell_1/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_2?
!lstm_1/while/lstm_cell_1/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_3?
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_1/while/lstm_cell_1/Const_1?
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_1/while/lstm_cell_1/split_1/split_dim?
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2"
 lstm_1/while/lstm_cell_1/split_1?
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/while/lstm_cell_1/BiasAdd?
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/BiasAdd_1?
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/BiasAdd_2?
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/BiasAdd_3?
lstm_1/while/lstm_cell_1/mulMullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/while/lstm_cell_1/mul?
lstm_1/while/lstm_cell_1/mul_1Mullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_1?
lstm_1/while/lstm_cell_1/mul_2Mullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_2?
lstm_1/while/lstm_cell_1/mul_3Mullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_3?
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02)
'lstm_1/while/lstm_cell_1/ReadVariableOp?
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_1/while/lstm_cell_1/strided_slice/stack?
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   20
.lstm_1/while/lstm_cell_1/strided_slice/stack_1?
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice/stack_2?
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2(
&lstm_1/while/lstm_cell_1/strided_slice?
!lstm_1/while/lstm_cell_1/MatMul_4MatMul lstm_1/while/lstm_cell_1/mul:z:0/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_4?
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/while/lstm_cell_1/add?
 lstm_1/while/lstm_cell_1/SigmoidSigmoid lstm_1/while/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/while/lstm_cell_1/Sigmoid?
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_1?
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   20
.lstm_1/while/lstm_cell_1/strided_slice_1/stack?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_1?
!lstm_1/while/lstm_cell_1/MatMul_5MatMul"lstm_1/while/lstm_cell_1/mul_1:z:01lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_5?
lstm_1/while/lstm_cell_1/add_1AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_1?
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/Sigmoid_1?
lstm_1/while/lstm_cell_1/mul_4Mul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_4?
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_2?
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   20
.lstm_1/while/lstm_cell_1/strided_slice_2/stack?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_2?
!lstm_1/while/lstm_cell_1/MatMul_6MatMul"lstm_1/while/lstm_cell_1/mul_2:z:01lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_6?
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_2?
lstm_1/while/lstm_cell_1/TanhTanh"lstm_1/while/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/while/lstm_cell_1/Tanh?
lstm_1/while/lstm_cell_1/mul_5Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0!lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_5?
lstm_1/while/lstm_cell_1/add_3AddV2"lstm_1/while/lstm_cell_1/mul_4:z:0"lstm_1/while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_3?
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_3?
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   20
.lstm_1/while/lstm_cell_1/strided_slice_3/stack?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_3?
!lstm_1/while/lstm_cell_1/MatMul_7MatMul"lstm_1/while/lstm_cell_1/mul_3:z:01lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_7?
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_4?
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/Sigmoid_2?
lstm_1/while/lstm_cell_1/Tanh_1Tanh"lstm_1/while/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2!
lstm_1/while/lstm_cell_1/Tanh_1?
lstm_1/while/lstm_cell_1/mul_6Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0#lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_6?
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y?
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y?
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1?
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity?
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1?
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2?
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3?
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_6:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
lstm_1/while/Identity_4?
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_3:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"?
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
f
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_34646

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_37015

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????- 2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????- 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????+@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????+@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????+@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????+ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????+ 
 
_user_specified_nameinputs
?
?
while_cond_37735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_37735___redundant_placeholder03
/while_while_cond_37735___redundant_placeholder13
/while_while_cond_37735___redundant_placeholder23
/while_while_cond_37735___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?$
?
while_body_35304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_1_35328_0
while_lstm_cell_1_35330_0
while_lstm_cell_1_35332_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_1_35328
while_lstm_cell_1_35330
while_lstm_cell_1_35332??)while/lstm_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_35328_0while_lstm_cell_1_35330_0while_lstm_cell_1_35332_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_348782+
)while/lstm_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_35328while_lstm_cell_1_35328_0"4
while_lstm_cell_1_35330while_lstm_cell_1_35330_0"4
while_lstm_cell_1_35332while_lstm_cell_1_35332_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
??
?
A__inference_lstm_1_layer_call_and_return_conditional_losses_38138

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2x
lstm_cell_1/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/ones_likeh
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mulMulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulzeros:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_3?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_1:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_4Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_4?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_2:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh?
lstm_cell_1/mul_5Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_5?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_4:z:0lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_3:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_6Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_cell_1/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_38009*
condR
while_cond_38008*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
E
)__inference_flatten_1_layer_call_fn_38171

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_360572
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????F:O K
'
_output_shapes
:?????????F
 
_user_specified_nameinputs
?
?
&__inference_lstm_1_layer_call_fn_38149

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_357802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
while_body_35892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/ones_liket
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mulMulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mulwhile_placeholder_2$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_3?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_1:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_4Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_4?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_2:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_5Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_5?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_4:z:0while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_3:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_6Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_6:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
E
)__inference_reshape_1_layer_call_fn_36970

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_353992
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????+:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
?
&__inference_lstm_1_layer_call_fn_38160

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_360212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_36260
reshape_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallreshape_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_346372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????+
)
_user_specified_namereshape_1_input
?	
?
lstm_1_while_cond_36767*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_36767___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_36767___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_36767___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_36767___redundant_placeholder3
lstm_1_while_identity
?
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_37167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_37167___redundant_placeholder03
/while_while_cond_37167___redundant_placeholder13
/while_while_cond_37167___redundant_placeholder23
/while_while_cond_37167___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_35891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35891___redundant_placeholder03
/while_while_cond_35891___redundant_placeholder13
/while_while_cond_35891___redundant_placeholder23
/while_while_cond_35891___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?	
?
lstm_1_while_cond_36444*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_36444___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_36444___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_36444___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_36444___redundant_placeholder3
lstm_1_while_identity
?
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_35303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35303___redundant_placeholder03
/while_while_cond_35303___redundant_placeholder13
/while_while_cond_35303___redundant_placeholder23
/while_while_cond_35303___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :?????????F:?????????F: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_sequential_1_layer_call_fn_36929

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_361542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
??
?

lstm_1_while_body_36445*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0>
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_06
2lstm_1_while_lstm_cell_1_readvariableop_resource_0
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor:
6lstm_1_while_lstm_cell_1_split_readvariableop_resource<
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource4
0lstm_1_while_lstm_cell_1_readvariableop_resource??'lstm_1/while/lstm_cell_1/ReadVariableOp?)lstm_1/while/lstm_cell_1/ReadVariableOp_1?)lstm_1/while/lstm_cell_1/ReadVariableOp_2?)lstm_1/while/lstm_cell_1/ReadVariableOp_3?-lstm_1/while/lstm_cell_1/split/ReadVariableOp?/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem?
(lstm_1/while/lstm_cell_1/ones_like/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/ones_like/Shape?
(lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_1/while/lstm_cell_1/ones_like/Const?
"lstm_1/while/lstm_cell_1/ones_likeFill1lstm_1/while/lstm_cell_1/ones_like/Shape:output:01lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/ones_like?
&lstm_1/while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2(
&lstm_1/while/lstm_cell_1/dropout/Const?
$lstm_1/while/lstm_cell_1/dropout/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:0/lstm_1/while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2&
$lstm_1/while/lstm_cell_1/dropout/Mul?
&lstm_1/while/lstm_cell_1/dropout/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_1/while/lstm_cell_1/dropout/Shape?
=lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform/lstm_1/while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2猷2?
=lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniform?
/lstm_1/while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=21
/lstm_1/while/lstm_cell_1/dropout/GreaterEqual/y?
-lstm_1/while/lstm_cell_1/dropout/GreaterEqualGreaterEqualFlstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:08lstm_1/while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2/
-lstm_1/while/lstm_cell_1/dropout/GreaterEqual?
%lstm_1/while/lstm_cell_1/dropout/CastCast1lstm_1/while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2'
%lstm_1/while/lstm_cell_1/dropout/Cast?
&lstm_1/while/lstm_cell_1/dropout/Mul_1Mul(lstm_1/while/lstm_cell_1/dropout/Mul:z:0)lstm_1/while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2(
&lstm_1/while/lstm_cell_1/dropout/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_1/while/lstm_cell_1/dropout_1/Const?
&lstm_1/while/lstm_cell_1/dropout_1/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2(
&lstm_1/while/lstm_cell_1/dropout_1/Mul?
(lstm_1/while/lstm_cell_1/dropout_1/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_1/Shape?
?lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2A
?lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F21
/lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_1/CastCast3lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2)
'lstm_1/while/lstm_cell_1/dropout_1/Cast?
(lstm_1/while/lstm_cell_1/dropout_1/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_1/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2*
(lstm_1/while/lstm_cell_1/dropout_1/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_1/while/lstm_cell_1/dropout_2/Const?
&lstm_1/while/lstm_cell_1/dropout_2/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2(
&lstm_1/while/lstm_cell_1/dropout_2/Mul?
(lstm_1/while/lstm_cell_1/dropout_2/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_2/Shape?
?lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2A
?lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F21
/lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_2/CastCast3lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2)
'lstm_1/while/lstm_cell_1/dropout_2/Cast?
(lstm_1/while/lstm_cell_1/dropout_2/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_2/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2*
(lstm_1/while/lstm_cell_1/dropout_2/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_1/while/lstm_cell_1/dropout_3/Const?
&lstm_1/while/lstm_cell_1/dropout_3/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2(
&lstm_1/while/lstm_cell_1/dropout_3/Mul?
(lstm_1/while/lstm_cell_1/dropout_3/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_3/Shape?
?lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2A
?lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F21
/lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_3/CastCast3lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2)
'lstm_1/while/lstm_cell_1/dropout_3/Cast?
(lstm_1/while/lstm_cell_1/dropout_3/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_3/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2*
(lstm_1/while/lstm_cell_1/dropout_3/Mul_1?
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_1/while/lstm_cell_1/Const?
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_1/split/split_dim?
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02/
-lstm_1/while/lstm_cell_1/split/ReadVariableOp?
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2 
lstm_1/while/lstm_cell_1/split?
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2!
lstm_1/while/lstm_cell_1/MatMul?
!lstm_1/while/lstm_cell_1/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_1?
!lstm_1/while/lstm_cell_1/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_2?
!lstm_1/while/lstm_cell_1/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_3?
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_1/while/lstm_cell_1/Const_1?
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_1/while/lstm_cell_1/split_1/split_dim?
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2"
 lstm_1/while/lstm_cell_1/split_1?
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/while/lstm_cell_1/BiasAdd?
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/BiasAdd_1?
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/BiasAdd_2?
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/BiasAdd_3?
lstm_1/while/lstm_cell_1/mulMullstm_1_while_placeholder_2*lstm_1/while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/while/lstm_cell_1/mul?
lstm_1/while/lstm_cell_1/mul_1Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_1?
lstm_1/while/lstm_cell_1/mul_2Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_2?
lstm_1/while/lstm_cell_1/mul_3Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_3?
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02)
'lstm_1/while/lstm_cell_1/ReadVariableOp?
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_1/while/lstm_cell_1/strided_slice/stack?
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   20
.lstm_1/while/lstm_cell_1/strided_slice/stack_1?
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice/stack_2?
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2(
&lstm_1/while/lstm_cell_1/strided_slice?
!lstm_1/while/lstm_cell_1/MatMul_4MatMul lstm_1/while/lstm_cell_1/mul:z:0/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_4?
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/while/lstm_cell_1/add?
 lstm_1/while/lstm_cell_1/SigmoidSigmoid lstm_1/while/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2"
 lstm_1/while/lstm_cell_1/Sigmoid?
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_1?
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   20
.lstm_1/while/lstm_cell_1/strided_slice_1/stack?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_1?
!lstm_1/while/lstm_cell_1/MatMul_5MatMul"lstm_1/while/lstm_cell_1/mul_1:z:01lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_5?
lstm_1/while/lstm_cell_1/add_1AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_1?
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/Sigmoid_1?
lstm_1/while/lstm_cell_1/mul_4Mul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_4?
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_2?
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   20
.lstm_1/while/lstm_cell_1/strided_slice_2/stack?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_2?
!lstm_1/while/lstm_cell_1/MatMul_6MatMul"lstm_1/while/lstm_cell_1/mul_2:z:01lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_6?
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_2?
lstm_1/while/lstm_cell_1/TanhTanh"lstm_1/while/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/while/lstm_cell_1/Tanh?
lstm_1/while/lstm_cell_1/mul_5Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0!lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_5?
lstm_1/while/lstm_cell_1/add_3AddV2"lstm_1/while/lstm_cell_1/mul_4:z:0"lstm_1/while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_3?
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_3?
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   20
.lstm_1/while/lstm_cell_1/strided_slice_3/stack?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_3?
!lstm_1/while/lstm_cell_1/MatMul_7MatMul"lstm_1/while/lstm_cell_1/mul_3:z:01lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2#
!lstm_1/while/lstm_cell_1/MatMul_7?
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/add_4?
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2$
"lstm_1/while/lstm_cell_1/Sigmoid_2?
lstm_1/while/lstm_cell_1/Tanh_1Tanh"lstm_1/while/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2!
lstm_1/while/lstm_cell_1/Tanh_1?
lstm_1/while/lstm_cell_1/mul_6Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0#lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2 
lstm_1/while/lstm_cell_1/mul_6?
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y?
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y?
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1?
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity?
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1?
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2?
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3?
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_6:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
lstm_1/while/Identity_4?
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_3:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"?
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36206

inputs
conv1d_2_36181
conv1d_2_36183
conv1d_3_36186
conv1d_3_36188
lstm_1_36192
lstm_1_36194
lstm_1_36196
dense_1_36200
dense_1_36202
identity?? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_353992
reshape_1/PartitionedCall?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv1d_2_36181conv1d_2_36183*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_354252"
 conv1d_2/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_36186conv1d_3_36188*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_354592"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_346462!
max_pooling1d_1/PartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_1_36192lstm_1_36194lstm_1_36196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_360212 
lstm_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_360572
flatten_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_36200dense_1_36202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_360762!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
??
?
while_body_37736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/ones_like?
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_1/dropout/Const?
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/dropout/Mul?
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape?
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2Ҽ?28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform?
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_1/dropout/GreaterEqual/y?
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2(
&while/lstm_cell_1/dropout/GreaterEqual?
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2 
while/lstm_cell_1/dropout/Cast?
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout/Mul_1?
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_1/Const?
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_1/Mul?
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape?
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y?
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_1/GreaterEqual?
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_1/Cast?
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_1/Mul_1?
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_2/Const?
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_2/Mul?
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape?
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y?
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_2/GreaterEqual?
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_2/Cast?
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_2/Mul_1?
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_3/Const?
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_3/Mul?
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape?
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y?
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_3/GreaterEqual?
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_3/Cast?
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_3/Mul_1t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mulMulwhile_placeholder_2#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mulwhile_placeholder_2%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mulwhile_placeholder_2%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mulwhile_placeholder_2%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_3?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_1:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_4Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_4?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_2:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_5Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_5?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_4:z:0while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_3:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_6Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_6:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_sequential_1_layer_call_fn_36952

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_362062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
??
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36906

inputs8
4conv1d_2_conv1d_expanddims_1_readvariableop_resource,
(conv1d_2_biasadd_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource4
0lstm_1_lstm_cell_1_split_readvariableop_resource6
2lstm_1_lstm_cell_1_split_1_readvariableop_resource.
*lstm_1_lstm_cell_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?!lstm_1/lstm_cell_1/ReadVariableOp?#lstm_1/lstm_cell_1/ReadVariableOp_1?#lstm_1/lstm_cell_1/ReadVariableOp_2?#lstm_1/lstm_cell_1/ReadVariableOp_3?'lstm_1/lstm_cell_1/split/ReadVariableOp?)lstm_1/lstm_cell_1/split_1/ReadVariableOp?lstm_1/whileX
reshape_1/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_1/Shape?
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack?
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1?
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slice?
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shape?
reshape_1/ReshapeReshapeinputs reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????+2
reshape_1/Reshape?
conv1d_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_2/Pad/paddings?
conv1d_2/PadPadreshape_1/Reshape:output:0conv1d_2/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????-2
conv1d_2/Pad?
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_2/conv1d/ExpandDims/dim?
conv1d_2/conv1d/ExpandDims
ExpandDimsconv1d_2/Pad:output:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????-2
conv1d_2/conv1d/ExpandDims?
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dim?
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_2/conv1d/ExpandDims_1?
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+ *
paddingVALID*
strides
2
conv1d_2/conv1d?
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*+
_output_shapes
:?????????+ *
squeeze_dims

?????????2
conv1d_2/conv1d/Squeeze?
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOp?
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+ 2
conv1d_2/BiasAddw
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????+ 2
conv1d_2/Relu?
conv1d_3/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_3/Pad/paddings?
conv1d_3/PadPadconv1d_2/Relu:activations:0conv1d_3/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????- 2
conv1d_3/Pad?
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_3/conv1d/ExpandDims/dim?
conv1d_3/conv1d/ExpandDims
ExpandDimsconv1d_3/Pad:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????- 2
conv1d_3/conv1d/ExpandDims?
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dim?
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_3/conv1d/ExpandDims_1?
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????+@*
paddingVALID*
strides
2
conv1d_3/conv1d?
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*+
_output_shapes
:?????????+@*
squeeze_dims

?????????2
conv1d_3/conv1d/Squeeze?
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_3/BiasAdd/ReadVariableOp?
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????+@2
conv1d_3/BiasAddw
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????+@2
conv1d_3/Relu?
max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_1/ExpandDims/dim?
max_pooling1d_1/ExpandDims
ExpandDimsconv1d_3/Relu:activations:0'max_pooling1d_1/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????+@2
max_pooling1d_1/ExpandDims?
max_pooling1d_1/MaxPoolMaxPool#max_pooling1d_1/ExpandDims:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling1d_1/MaxPool?
max_pooling1d_1/SqueezeSqueeze max_pooling1d_1/MaxPool:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims
2
max_pooling1d_1/Squeezel
lstm_1/ShapeShape max_pooling1d_1/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_1/Shape?
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack?
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1?
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2?
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros/mul/y?
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/Less/y?
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros/packed/1?
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const?
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros_1/mul/y?
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/Less/y?
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :F2
lstm_1/zeros_1/packed/1?
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const?
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/zeros_1?
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm?
lstm_1/transpose	Transpose max_pooling1d_1/Squeeze:output:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1?
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack?
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1?
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2?
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1?
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_1/TensorArrayV2/element_shape?
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2?
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor?
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack?
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1?
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2?
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_1/strided_slice_2?
"lstm_1/lstm_cell_1/ones_like/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/ones_like/Shape?
"lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_1/lstm_cell_1/ones_like/Const?
lstm_1/lstm_cell_1/ones_likeFill+lstm_1/lstm_cell_1/ones_like/Shape:output:0+lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/ones_likev
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const?
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_1/split/split_dim?
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	@?*
dtype02)
'lstm_1/lstm_cell_1/split/ReadVariableOp?
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
lstm_1/lstm_cell_1/split?
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul?
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_1?
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_2?
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_3z
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const_1?
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_1/lstm_cell_1/split_1/split_dim?
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_1/lstm_cell_1/split_1/ReadVariableOp?
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
lstm_1/lstm_cell_1/split_1?
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd?
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd_1?
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd_2?
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/BiasAdd_3?
lstm_1/lstm_cell_1/mulMullstm_1/zeros:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul?
lstm_1/lstm_cell_1/mul_1Mullstm_1/zeros:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_1?
lstm_1/lstm_cell_1/mul_2Mullstm_1/zeros:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_2?
lstm_1/lstm_cell_1/mul_3Mullstm_1/zeros:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_3?
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02#
!lstm_1/lstm_cell_1/ReadVariableOp?
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_1/lstm_cell_1/strided_slice/stack?
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2*
(lstm_1/lstm_cell_1/strided_slice/stack_1?
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice/stack_2?
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2"
 lstm_1/lstm_cell_1/strided_slice?
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/lstm_cell_1/mul:z:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_4?
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add?
lstm_1/lstm_cell_1/SigmoidSigmoidlstm_1/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Sigmoid?
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_1?
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2*
(lstm_1/lstm_cell_1/strided_slice_1/stack?
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_1?
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_2?
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_1?
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/lstm_cell_1/mul_1:z:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_5?
lstm_1/lstm_cell_1/add_1AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_1?
lstm_1/lstm_cell_1/Sigmoid_1Sigmoidlstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Sigmoid_1?
lstm_1/lstm_cell_1/mul_4Mul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_4?
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_2?
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(lstm_1/lstm_cell_1/strided_slice_2/stack?
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_1?
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_2?
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_2?
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/lstm_cell_1/mul_2:z:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_6?
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_2?
lstm_1/lstm_cell_1/TanhTanhlstm_1/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Tanh?
lstm_1/lstm_cell_1/mul_5Mullstm_1/lstm_cell_1/Sigmoid:y:0lstm_1/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_5?
lstm_1/lstm_cell_1/add_3AddV2lstm_1/lstm_cell_1/mul_4:z:0lstm_1/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_3?
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	F?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_3?
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(lstm_1/lstm_cell_1/strided_slice_3/stack?
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_1?
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_2?
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_3?
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/lstm_cell_1/mul_3:z:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/MatMul_7?
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/add_4?
lstm_1/lstm_cell_1/Sigmoid_2Sigmoidlstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Sigmoid_2?
lstm_1/lstm_cell_1/Tanh_1Tanhlstm_1/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/Tanh_1?
lstm_1/lstm_cell_1/mul_6Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
lstm_1/lstm_cell_1/mul_6?
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   2&
$lstm_1/TensorArrayV2_1/element_shape?
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time?
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter?
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????F:?????????F: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_1_while_body_36768*#
condR
lstm_1_while_cond_36767*K
output_shapes:
8: : : : :?????????F:?????????F: : : : : *
parallel_iterations 2
lstm_1/while?
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????F   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????F*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack?
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_1/strided_slice_3/stack?
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1?
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2?
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????F*
shrink_axis_mask2
lstm_1/strided_slice_3?
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm?
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????F2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????F   2
flatten_1/Const?
flatten_1/ReshapeReshapelstm_1/strided_slice_3:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:F
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0 ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????+:::::::::2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
??
?
while_body_35619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/ones_like?
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_1/dropout/Const?
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/dropout/Mul?
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape?
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2ݤ?28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform?
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_1/dropout/GreaterEqual/y?
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2(
&while/lstm_cell_1/dropout/GreaterEqual?
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2 
while/lstm_cell_1/dropout/Cast?
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout/Mul_1?
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_1/Const?
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_1/Mul?
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape?
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y?
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_1/GreaterEqual?
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_1/Cast?
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_1/Mul_1?
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_2/Const?
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_2/Mul?
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape?
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y?
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_2/GreaterEqual?
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_2/Cast?
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_2/Mul_1?
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_1/dropout_3/Const?
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2!
while/lstm_cell_1/dropout_3/Mul?
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape?
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2?? 2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y?
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2*
(while/lstm_cell_1/dropout_3/GreaterEqual?
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2"
 while/lstm_cell_1/dropout_3/Cast?
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2#
!while/lstm_cell_1/dropout_3/Mul_1t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mulMulwhile_placeholder_2#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mulwhile_placeholder_2%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mulwhile_placeholder_2%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mulwhile_placeholder_2%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_3?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_1:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_4Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_4?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_2:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_5Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_5?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_4:z:0while/lstm_cell_1/mul_5:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	F?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_3:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_6Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
while/lstm_cell_1/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_6:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????F:?????????F: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????F:-)
'
_output_shapes
:?????????F:

_output_shapes
: :

_output_shapes
: 
?
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_36965

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicem
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????+2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????+:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
?
+__inference_lstm_cell_1_layer_call_fn_38411

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????F:?????????F:?????????F*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_348782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????F2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:?????????@:?????????F:?????????F:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????F
"
_user_specified_name
states/1
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_38166

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????F   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????F2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????F2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????F:O K
'
_output_shapes
:?????????F
 
_user_specified_nameinputs
?l
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_34801

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapestates*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????F2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????F2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????F*
dtype0*
seed???)*
seed2᳨2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????F2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????F2
dropout_3/Mul_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	@?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@F:@F:@F:@F*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:?????????F2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:?????????F2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:?????????F2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:?????????F2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:F:F:F:F*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????F2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????F2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????F2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????F2
	BiasAdd_3^
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
muld
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mul_1d
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mul_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:?????????F2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????F2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????F2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    F   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????F2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????F2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????F2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????F2
Tanh^
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????F2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:?????????F2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	F?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:FF*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????F2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????F2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????F2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????F2
Tanh_1b
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????F2
mul_6?
IdentityIdentity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity?

Identity_1Identity	mul_6:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????F2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:?????????@:?????????F:?????????F:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????F
 
_user_specified_namestates:OK
'
_output_shapes
:?????????F
 
_user_specified_namestates
?
}
(__inference_conv1d_2_layer_call_fn_36997

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????+ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_354252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????+ 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????+::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
K
/__inference_max_pooling1d_1_layer_call_fn_34652

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_346462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
reshape_1_input8
!serving_default_reshape_1_input:0?????????+;
dense_10
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:ߕ
?@
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?<
_tf_keras_sequential?<{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "reshape_1_input"}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [-1, 1]}}}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 70, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.1, "implementation": 1}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "reshape_1_input"}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [-1, 1]}}}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 70, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.1, "implementation": 1}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.004999999888241291, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [-1, 1]}}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "conv1d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43, 1]}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "conv1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43, 32]}}
?
	variables
regularization_losses
 trainable_variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "max_pooling1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
"cell
#
state_spec
$regularization_losses
%trainable_variables
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 70, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.1, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 21, 64]}}
?
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

,kernel
-bias
.	variables
/regularization_losses
0trainable_variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 70}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70]}}
?
2iter
	3decay
4learning_rate
5momentum
6rho	rmsw	rmsx	rmsy	rmsz	,rms{	-rms|	7rms}	8rms~	9rms"
	optimizer
 "
trackable_list_wrapper
_
0
1
2
3
74
85
96
,7
-8"
trackable_list_wrapper
_
0
1
2
3
74
85
96
,7
-8"
trackable_list_wrapper
?

:layers
;non_trainable_variables
	regularization_losses

trainable_variables
<layer_metrics
=metrics
>layer_regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?layers
@non_trainable_variables
	variables
regularization_losses
Alayer_metrics
Bmetrics
Clayer_regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# 2conv1d_2/kernel
: 2conv1d_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

Dlayers
Enon_trainable_variables
	variables
regularization_losses
Flayer_metrics
Gmetrics
Hlayer_regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_3/kernel
:@2conv1d_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

Ilayers
Jnon_trainable_variables
	variables
regularization_losses
Klayer_metrics
Lmetrics
Mlayer_regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Nlayers
Onon_trainable_variables
	variables
regularization_losses
Player_metrics
Qmetrics
Rlayer_regularization_losses
 trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

7kernel
8recurrent_kernel
9bias
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 70, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.1, "implementation": 1}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
?

Wlayers
Xnon_trainable_variables
$regularization_losses
%trainable_variables

Ystates
Zlayer_metrics
[metrics
\layer_regularization_losses
&	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

]layers
^non_trainable_variables
(	variables
)regularization_losses
_layer_metrics
`metrics
alayer_regularization_losses
*trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :F
2dense_1/kernel
:
2dense_1/bias
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?

blayers
cnon_trainable_variables
.	variables
/regularization_losses
dlayer_metrics
emetrics
flayer_regularization_losses
0trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2decay
: (2learning_rate
: (2momentum
: (2rho
,:*	@?2lstm_1/lstm_cell_1/kernel
6:4	F?2#lstm_1/lstm_cell_1/recurrent_kernel
&:$?2lstm_1/lstm_cell_1/bias
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
g0
h1"
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
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
?

ilayers
jnon_trainable_variables
S	variables
Tregularization_losses
klayer_metrics
lmetrics
mlayer_regularization_losses
Utrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
"0"
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
?
	ntotal
	ocount
p	variables
q	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
r0
s1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
':% 2conv1d_2/kernel/rms
: 2conv1d_2/bias/rms
':% @2conv1d_3/kernel/rms
:@2conv1d_3/bias/rms
": F
2dense_1/kernel/rms
:
2dense_1/bias/rms
.:,	@?2lstm_1/lstm_cell_1/kernel/rms
8:6	F?2'lstm_1/lstm_cell_1/recurrent_kernel/rms
(:&?2lstm_1/lstm_cell_1/bias/rms
?2?
 __inference__wrapped_model_34637?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
reshape_1_input?????????+
?2?
,__inference_sequential_1_layer_call_fn_36227
,__inference_sequential_1_layer_call_fn_36952
,__inference_sequential_1_layer_call_fn_36929
,__inference_sequential_1_layer_call_fn_36175?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36615
G__inference_sequential_1_layer_call_and_return_conditional_losses_36906
G__inference_sequential_1_layer_call_and_return_conditional_losses_36122
G__inference_sequential_1_layer_call_and_return_conditional_losses_36093?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_reshape_1_layer_call_fn_36970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_reshape_1_layer_call_and_return_conditional_losses_36965?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv1d_2_layer_call_fn_36997?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_36988?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv1d_3_layer_call_fn_37024?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_37015?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling1d_1_layer_call_fn_34652?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_34646?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
&__inference_lstm_1_layer_call_fn_38160
&__inference_lstm_1_layer_call_fn_37592
&__inference_lstm_1_layer_call_fn_38149
&__inference_lstm_1_layer_call_fn_37581?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37570
A__inference_lstm_1_layer_call_and_return_conditional_losses_37897
A__inference_lstm_1_layer_call_and_return_conditional_losses_37329
A__inference_lstm_1_layer_call_and_return_conditional_losses_38138?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_flatten_1_layer_call_fn_38171?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_1_layer_call_and_return_conditional_losses_38166?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_38191?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_38182?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_36260reshape_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_lstm_cell_1_layer_call_fn_38394
+__inference_lstm_cell_1_layer_call_fn_38411?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_38300
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_38377?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_34637x	798,-8?5
.?+
)?&
reshape_1_input?????????+
? "1?.
,
dense_1!?
dense_1?????????
?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_36988d3?0
)?&
$?!
inputs?????????+
? ")?&
?
0?????????+ 
? ?
(__inference_conv1d_2_layer_call_fn_36997W3?0
)?&
$?!
inputs?????????+
? "??????????+ ?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_37015d3?0
)?&
$?!
inputs?????????+ 
? ")?&
?
0?????????+@
? ?
(__inference_conv1d_3_layer_call_fn_37024W3?0
)?&
$?!
inputs?????????+ 
? "??????????+@?
B__inference_dense_1_layer_call_and_return_conditional_losses_38182\,-/?,
%?"
 ?
inputs?????????F
? "%?"
?
0?????????

? z
'__inference_dense_1_layer_call_fn_38191O,-/?,
%?"
 ?
inputs?????????F
? "??????????
?
D__inference_flatten_1_layer_call_and_return_conditional_losses_38166X/?,
%?"
 ?
inputs?????????F
? "%?"
?
0?????????F
? x
)__inference_flatten_1_layer_call_fn_38171K/?,
%?"
 ?
inputs?????????F
? "??????????F?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37329}798O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "%?"
?
0?????????F
? ?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37570}798O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "%?"
?
0?????????F
? ?
A__inference_lstm_1_layer_call_and_return_conditional_losses_37897m798??<
5?2
$?!
inputs?????????@

 
p

 
? "%?"
?
0?????????F
? ?
A__inference_lstm_1_layer_call_and_return_conditional_losses_38138m798??<
5?2
$?!
inputs?????????@

 
p 

 
? "%?"
?
0?????????F
? ?
&__inference_lstm_1_layer_call_fn_37581p798O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "??????????F?
&__inference_lstm_1_layer_call_fn_37592p798O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "??????????F?
&__inference_lstm_1_layer_call_fn_38149`798??<
5?2
$?!
inputs?????????@

 
p

 
? "??????????F?
&__inference_lstm_1_layer_call_fn_38160`798??<
5?2
$?!
inputs?????????@

 
p 

 
? "??????????F?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_38300?798??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????F
"?
states/1?????????F
p
? "s?p
i?f
?
0/0?????????F
E?B
?
0/1/0?????????F
?
0/1/1?????????F
? ?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_38377?798??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????F
"?
states/1?????????F
p 
? "s?p
i?f
?
0/0?????????F
E?B
?
0/1/0?????????F
?
0/1/1?????????F
? ?
+__inference_lstm_cell_1_layer_call_fn_38394?798??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????F
"?
states/1?????????F
p
? "c?`
?
0?????????F
A?>
?
1/0?????????F
?
1/1?????????F?
+__inference_lstm_cell_1_layer_call_fn_38411?798??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????F
"?
states/1?????????F
p 
? "c?`
?
0?????????F
A?>
?
1/0?????????F
?
1/1?????????F?
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_34646?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
/__inference_max_pooling1d_1_layer_call_fn_34652wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
D__inference_reshape_1_layer_call_and_return_conditional_losses_36965\/?,
%?"
 ?
inputs?????????+
? ")?&
?
0?????????+
? |
)__inference_reshape_1_layer_call_fn_36970O/?,
%?"
 ?
inputs?????????+
? "??????????+?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36093t	798,-@?=
6?3
)?&
reshape_1_input?????????+
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36122t	798,-@?=
6?3
)?&
reshape_1_input?????????+
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36615k	798,-7?4
-?*
 ?
inputs?????????+
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_36906k	798,-7?4
-?*
 ?
inputs?????????+
p 

 
? "%?"
?
0?????????

? ?
,__inference_sequential_1_layer_call_fn_36175g	798,-@?=
6?3
)?&
reshape_1_input?????????+
p

 
? "??????????
?
,__inference_sequential_1_layer_call_fn_36227g	798,-@?=
6?3
)?&
reshape_1_input?????????+
p 

 
? "??????????
?
,__inference_sequential_1_layer_call_fn_36929^	798,-7?4
-?*
 ?
inputs?????????+
p

 
? "??????????
?
,__inference_sequential_1_layer_call_fn_36952^	798,-7?4
-?*
 ?
inputs?????????+
p 

 
? "??????????
?
#__inference_signature_wrapper_36260?	798,-K?H
? 
A?>
<
reshape_1_input)?&
reshape_1_input?????????+"1?.
,
dense_1!?
dense_1?????????
