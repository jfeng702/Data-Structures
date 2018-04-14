class Node {
  constructor(val, next = null) {
    this.val = val;
    this.next = next;
  }
}

class LinkedList {
  constructor(val) {
    this.head = new Node(val, null);
  }

  add(val) {
    let current = this.head;
    while (current && current.next) {
      current = current.next;
    }
    current.next = new Node(val);
  }

// delete 1 matching node
  delete(val) {
    let current = this.head;
    if (current.val === val) {
      this.head = current.next;
    } else {
      while (current && current.next) {
        if (current.next.val === val) {
          if (current.next.next) {
            current.next = current.next.next;
            return;
          } else {
            current.next = null;
            return;
          }
        }
        current = current.next;
      }
    }
  }

  return_list() {
    let current = this.head;
    let arr = [current];
    while (current.next) {
      current = current.next;
      arr.push(current);
    }
    return arr;
  }
}
