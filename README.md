# Haskell Basics

## [Learn You a Haskell][learnhaskell]
<details>
    <summary><b>1</b> What is Haskell?</summary>
    <i>Haskell is a purely functional programming language</i>
    <ul>
        <li>Variables cannot change state</li>
        <li>Functions have no side-effects: as in only io
            <ul>
                <li><b>Referential Transparency:</b> Calling the same function with the same inputs and receiving the same outputs</li>
            </ul>
        </li>
    </ul>
    <i>Haskell is lazy</i>
    <ul>
        <li>Unless told otherwise, it won't execute a function unless "it really has to"</li>
    </ul>
    <br/>    
    <p>Combining Referential Transparency and Laziness lets you think about programming as a series of <b>Transformations on Data.</b> This is allegedly cool because it allows for infinite data structures!</p>
    <br/>
    <i>Haskell is Statically Typed Language</i>
    <ul>
        <li>Errors are caught at compile time</li>
        <li>Haskell has good <b>Type Inference</b>, or the abillity to infer the type of the variable used, thus not requiring explicit typing.</li>
    </ul>
</details>
<details>
    <summary><b>2</b> Haskell Operations</summary>
    <ul>
        <li>Negative numbers are funny. Always wrap them in parenthses.
            <ul>
                <li><b>NOT OKAY:</b> 5 * -3</li>
                <li><b>OKAY:</b> 5 * (-3)</li>
            </ul>
        </li>
        <li>Boolean Values are Capitalized
            <ul>
                <li><b>True/False</b></li>
            </ul>
        </li>
        <li>Negation
            <ul>
                <li><b>Boolean: </b>not means negate</li>
                <li><b>Arithmetic: </b>/= means not equal to</li>
            </ul>
        </li>
        <li>Type Coercion
            <ul>
                <li><b>Only exists from int -> float: </b></li>
            </ul>
        </li>
        <li>Infix, Prefix, Suffix operations
            <ul>
                <li><b>Infix: </b> *, +, -, /. Put these between numbers</li>
                <li><b>Prefix: </b> *, +, -, /. Put these between numbers</li>
            </ul>
        </li>
        <li>Function Calls
            <ul>
                <li><b>FunctionName param1 param2 param3 </b>
                <li><b>2 Parameter Prefix functions can be written as infix functions </b>
                    <ul>
                        <li><i>div 92 10</i> can be written as <i>92 `div` 10</i></li>
                    </ul>
            </ul>
        </li>
    </ul>
</details>
<details open>
    <summary><b>3</b> Haskell Data Structures</summary>
    <ul>
        <li><b>Lists</b>
            <ul>
                <li><i>let</i> or nothing for variable assignment in interpreter (not .hs files)</li>
                <li><i>Strings are lists of chars: </i> you can perform list functions on strings. Ex: Concatenation
                    <ul>
                        <li>"hello" ++ " " ++ "world" = "hello world"</li>
                        <li>[1,2,3] ++ [4,5,6] = [1,2,3,4,5,6]</li>
                        <li>['w','o'] ++ ['o','t'] = "woot"</li>
                    </ul>
                </li>
                <li><i>Operators</i>
                    <ul>
                        <li><b>++ -</b> Slower Concatenation, must iterate through entire left side of operator
                            <ul>
                                <li></li>
                            </ul>
                        </li>
                        <li><b>:</b> - Faster Concatenation, appends singletons to front of right structure instantly
                            <ul>    
                                <li>[1,2,3] == 1:2:3:[]</li>
                                <li>3:[1,2] == [3,1,2]</li>
                            </ul>
                        </li>
                        <li><b>!! - </b>Selects element at specified index
                            <ul>    
                                <li>[1,2,3] !! 2 == 3</li>
                            </ul>
                        </li>
                        <li><b>List Comparison: >,<, ==</b>
                            <ul>    
                                <li>>, < will evaluate heads of lists and move its way down.
                                    <ul>    
                                        <li>[1,2,3] > [1, 2, 1] == True</li>
                                        <li>[1,2,3] > [1, 2] == True</li>
                                        <li>[1,2,3] > [1, 2, 3, 4] == False</li>
                                        <li>[1,2,3] > [1, 2, 4] ==  False</li>
                                    </ul>
                                </li>
                                <li>== every element must match</li>
                            </ul>
                        </li>
                    </ul>
                    <li><i>Other functions</i>
                        <ul>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">head</b> returns the first element in list
                                <ul>
                                    <li>head [6,5,2] == 6</li>
                                </ul>
                            </li> 
                            <li><b style="color: white; background-color:red; font-family:Courier New;">tail</b> returns all but the first element in list
                                <ul>
                                    <li>tail [6,5,2] == [5,2]</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">last</b> returns last element in list
                                <ul>
                                    <li>last [6,5,2] == 2</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">init</b> returns all but the last element in list
                                <ul>
                                    <li>init [6,5,2] == [6,5]</li>
                                </ul>
                            </li>
                            <li><b>DO NOT USE PREVIOUS FNS ON EMPTY LIST</b> these are runtime exceptions as they cannot be caught at compile time
                                <ul>
                                    <li>tail [] == *** Exception: Prelude.head: empty list</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">length</b> returns length of list
                                <ul>
                                    <li>length [6,5,2] == 3</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">null</b> returns true if empty, returns false if not
                                <ul>
                                    <li>null [6,5,2] == False</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">reverse</b> returns a reversed list
                                <ul>
                                    <li>reverse [6,5,2] == [2,5,6]</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">take</b> returns first n elements from l list
                                <ul>
                                    <li>take 2 [6,5,2] == [6,5]</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">take</b> returns first n elements from l list
                                <ul>
                                    <li>take 2 [6,5,2] == [6,5]</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">drop</b> returns remainder of list after "dropping" first n elements
                                <ul>
                                    <li>take 2 [6,5,2] == [2]</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">maximum</b> returns largest element in list
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">minimum</b> returns smallest element in list
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">sum</b> returns sum of a list
                                <ul>
                                    <li>sum [6,5,2] == 13</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">product</b> returns product of a list of elements
                                <ul>
                                    <li>product [6,5,2] == 60</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">elem</b> returns whether or not element exists in a list. usually called as an Infix function
                                <ul>
                                    <li>2 `elem` [6,5,2] == True</li>
                                    <li>10 `elem` [6,5,2] == False</li>
                                    <li>elem 2 [6,5,2] == True</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">cycle</b> returns an infinitely repeating list. Usually used with <b style="color: white; background-color:red; font-family:Courier New;">take</b> to slice it 
                                <ul>
                                    <li>take 9 (cycle [1,4,5]) == [1,4,5,1,4,5,1,4,5]</li>
                                    <li>take 8 (cycle "LOL ") == "LOL LOL "</li>
                                </ul>
                            </li>
                            <li><b style="color: white; background-color:red; font-family:Courier New;">repeat</b> returns an infinitely repeating list of one element. Usually used with <b style="color: white; background-color:red; font-family:Courier New;">take</b> to slice it 
                                <ul>
                                    <li>take 5 (repeat 3) == [3,3,3,3,3]</li>
                                </ul>
                            </li>     
                        </ul>
                        <li><i>Ranges</i> can be enumerated with numbers and characters. <b>YOU CAN ALSO SPECIFY STEPS</b> (see examples 4 & 5). You <b>cannot</b> specify non-linear steps [1,2,4,8..100] does not exponentially grow. Can do descending ranges
                            <ul>
                                <li>[1..20] == [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]</li>
                                <li>['a'..'z'] == "abcdefghijklmnopqrstuvwxyz"</li>
                                <li>['K'..'Z'] == "KLMNOPQRSTUVWXYZ"</li>
                                <li>[2, 4..20] == [2,4,6,8,10,12,14,16,18,20] </li>
                                <li>[3, 6..20] == [3,6,9,12,15,18]</li>
                                <li>[6,5..1] == [6,5,4,3,2,1]</li>
                                <li>[8,6..1] == [8,6,4,2]</li>
                                <li>You can do floating point ranges, but on god, just don't. The floating point percision just ain't there.</li>
                            </ul>
                        </li>
                    </li>
                    <li><i>List Comprehensions</i>
                        <ul>
                            <li><b>Standard</b> - transform list range
                            <ul>
                                <li>[x*2 | x <- [1..10]] == [2,4,6,8,10,12,14,16,18,20]</li>
                            </ul></li>
                            <li><b>Conditional</b> - decide condition which list to return<ul>
                                <li>[x*2 | x <- [1..10], x*2 >= 12]</li>
                            </ul></li>
                        </ul>
                    </li>
                </li>
            </ul>
        </li>
    </ul>
</details>



[learnhaskell]: http://learnyouahaskell.com/chapters