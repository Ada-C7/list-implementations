# List Implementations

**Native Arrays and Array Lists**

  1. Let's talk about native arrays vs. Ruby arrays (`ArrayList` in Java)
  2. Let's write `lib/array_list.rb` where we will simulate what happens "under the hood" with Ruby's Array object.
      - together: `initialize`, `add`, `delete`, `to_s`, `include?`, `size`
      - on your own: `max`

**Array Lists vs Linked Lists**

  3. Let's talk about linked lists
  4. Let's take look at `lib/linked_list.rb` and see how the _implementation_ is different (but the _interface_ is the same) and uses nodes instead of a native array to store data.
      - provided: `Node` class, `LinkedList` class: `initialize`, `add`, `delete`, `to_s`
      - together: `include?`, `size`
      - on your own: `max`

**Interfaces vs Implementations**

  5. Let's look at `lotto.rb` and talk about interfaces vs implementations
  6. Let's make it so that lotto ticket numbers are always displayed in numerical order. Do this by modifying the `add(value)` method in `ArrayList`
  7. Do the same for `add(value)` method in `LinkedList`
