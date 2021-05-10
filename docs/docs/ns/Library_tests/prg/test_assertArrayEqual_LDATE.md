# Iec Unit Test | [MAIN] | [NAMESPACES] | [METRICS] | [BACK]  

## Documentation for Program test_assertArrayEqual_LDATE  

## Interface  

| Direction | Name | Type | Attribute | Initial Value | Documentation |
| --------- | ---- | ---- | --------- | ------------- | ------------- |
| VAR | vTestCases | ARRAY[0..20] OF utTestCase |  |  | Definition of all test cases for this POU |  
| VAR | testRunner | utTestSuite |  |  | Test Suite fb instance to run the tests |  
| VAR | vRunAll | BOOL |  |  | Manual command to run all tests for this POU |  
| VAR | vResetAll | BOOL |  |  | Manual command to reset all tests for this POU |  
| VAR | vTestCase1_act | ARRAY[0..70] OF LDATE |  |  | Array data 1 of test case 1 |  
| VAR | vTestCase1_xp | ARRAY[0..70] OF LDATE |  |  | Array data 2 of test case 1 |  
| VAR | vTestCase2_act | ARRAY[0..70] OF LDATE |  |  | Array data 3 of test case 2 |  
| VAR | vTestCase2_xp | ARRAY[0..70] OF LDATE |  |  | Array data 4 of test case 2 |  
| VAR | i | UINT |  |  | Iterator variable i |  
| VAR | j | UINT |  |  | Iterator variable j |  


## Metrics  

- VAR : 10

| Actions | Lines of code | Maintainable size |
| ------- | ------------- | ----------------- |
| 4 | 63 | 73 |

---
Autogenerated with [ia_tools](https://github.com/tkucic/ia_tools)  

[MAIN]: ../../../../index.md
[NAMESPACES]: ../../nsList.md
[METRICS]: ../../../metrics.md
[BACK]: ../nsMain.md