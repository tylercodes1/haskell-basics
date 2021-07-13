# Haskell-basics

## [Learn You a Haskell][learnhaskell]
<details open=true>
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
    <p>Combining Referential Transparnecy and Laziness lets you think about programming as a series of <b>Transformations on Data.</b> This is allegedly cool because it allows for infinite data structures!</p>
    <br/>
    <i>Haskell is Statically Typed Language</i>
    <ul>
        <li>Errors are caught at compile time</li>
        <li>Haskell has good <b>Type Inference</b>, or the abillity to infer the type of the variable used, thus not requiring explicit typing.</li>
    </ul>
    
</details>


[learnhaskell]: http://learnyouahaskell.com/chapters