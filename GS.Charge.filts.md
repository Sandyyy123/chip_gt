Exclusion

```
[ ("<any column>.Cluster Sep" < 0.4 ) 
OR ("AB Freq" > 0.6 ) 
OR ("<any column>.AB R Mean" < 0.2 ) 
OR ("Het Excess" > 0.1 ) 
OR ("Het Excess" < -0.9 ) 
OR ("<any column>.AA T Mean" > 0.3 ) 
OR ("<any column>.BB T Mean" < 0.7 ) 
OR [ ("Call Freq" < 0.95 ) AND ("Chr" != Y ) ] 
OR ("<any column>.AB T Mean" < 0.2 ) 
OR ("<any column>.AB T Mean" > 0.8 ) 
OR ("<any column>.AA T Dev" > 0.06 ) 
OR ("<any column>.AB T Dev" >= 0.07 ) 
OR ("<any column>.BB T Dev" > 0.06 ) ]
```

FLAG

```
[ [ ("Call Freq" < 0.97 ) AND ("Chr" != Y ) ] 
OR [ ("Call Freq" < 0.99 ) AND ("Chr" != Y ) ] 
OR ("Minor Freq" = 0 ) OR ("Rep Errors" > 2 ) 
OR ("P-P-C Errors" > 1 ) OR ("P-P-C Errors" > 1 ) ]
```

REVIEW

```
[ [ ("Call Freq" < 0.97 ) AND ("10% GC" < 0.38 ) ] ]

```

REVIEW 

```
[ ("Chr" has X ) 
OR ("Chr" has Y ) 
OR ("Chr" has MT ) 
OR ("Chr" has XY ) 
OR [ ("Call Freq" >= 0.95 ) AND ("Call Freq" <= 0.99 )] 
OR ("<all columns>.Cluster Sep" < 0.4 ) 
OR ("AB Freq" > 0.6 ) 
OR ("<all columns>.AB R Mean" < 0.2 ) 
OR ("Het Excess" > 0.1 ) OR ("Het Excess" < -0.9 ) 
OR ("<all columns>.AA T Mean" >= 0.2 ) 
OR ("<all columns>.AA T Mean" <= 0.3 ) 
OR ("<all columns>.BB T Mean" >= 0.7 ) 
OR ("<all columns>.BB T Mean" <= 0.8 ) 
OR ("<all columns>.AB T Mean" >= 0.2 ) 
OR ("<all columns>.AB T Mean" <= 0.3 ) 
OR ("<all columns>.AB T Mean" >= 0.7 ) 
OR ("<all columns>.AB T Mean" <= 0.8 )
OR ("<all columns>.AA T Dev" > 0.025 ) 
OR ("<all columns>.AB T Dev" >= 0.07 ) 
OR ("<all columns>.BB T Dev" > 0.025 ) 
OR ("AB Freq" = 0 ) 
OR [ ("AB Freq" = 0 ) AND ("Minor Freq" > 0 ) ] 
OR [ ("AA Freq" = 1 ) AND ("Call Freq" < 1 ) ] 
OR [ ("AB Freq" = 1 ) AND ("Call Freq" < 1 ) ] 
OR [ ("Minor Freq" < 0.0001 ) AND ("Call Freq" != 0 ) ] 
OR ("Rep Errors" > 2 ) OR ("P-P-C Errors" > 1 ) 
OR ("P-C Errors" > 1 ) ]
```
