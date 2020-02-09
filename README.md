# statemachine_dsl

## TP DSL - Machine à états - Thomas COLETTE (M1ICE)

**Exemple de DSL :**

FSM MyFSM\
initialstate s0\
state s1, s2\
state s3 isFinal\
tr t1 s0 -> s1 : trigger start\
tr t2 s1 -> s2 : trigger continue\
tr t4 s2 -> s3 : trigger end
