// given head node of a tree, sum all leaf nodes
// BFS
// add left child onto queue, then right child onto queue
// move to next thing in queue and then do it again

// [1,2,3,4,5]
//   1
//  2 3
// 4 5


class Node {
  constructor(left, right, value) {
    this.left = left;
    this.right = right;
    this.value = value;
  }
}

const node4 = new Node(null, null, 4);
const node5 = new Node(null, null, 5);
const node3 = new Node(null, null, 3);
const node2 = new Node(node4, node5, 2);
const node1 = new Node(node2, node3, 1);



var bft = function(headNode) {
  let queue = [headNode];
  let index = 0;
  let sum = 0;
  while (index < queue.length) {
    if (queue[index].left || queue[index].right) {
      if (queue[index].left) {
        queue.push(queue[index].left);
      }
      if (queue[index].right) {
        queue.push(queue[index].right);
      }
    } else {
      console.log(sum);
      sum += queue[index].value;
    }
    index++;
  }
  return sum;
};

console.log(bft(node1));
