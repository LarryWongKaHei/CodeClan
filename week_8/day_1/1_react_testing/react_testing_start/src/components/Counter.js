import React from 'react'

const Counter = () => {
  const [counter, setCounter] = React.useState(0)

  const incrementCounter = () => {
    setCounter(counter + 1);
  }

  const decrementCounter = () => {
    setCounter(counter - 1);
  }

  return (
    <>
      <h1 data-testid="counter" id='counter'>{counter}</h1>
      <button id='button-up' data-testid="button-up" onClick={incrementCounter}> Up</button>
      <button id='button-down' data-testid="button-down" onClick={decrementCounter}>Down</button>
    </>
  )
}

export default Counter