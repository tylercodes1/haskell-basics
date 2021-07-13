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



[learnhaskell]: http://learnyouahaskell.com/chapters