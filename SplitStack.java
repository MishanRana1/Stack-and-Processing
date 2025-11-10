import java.util.*;

public class SplitStack {

    public static void splitStack(Stack<Integer> s){

        Queue<Integer> q = new LinkedList<>();

        while (!s.isEmpty()) q.add(s.pop());

        while (!q.isEmpty()) s.push(q.remove());

        while (!s.isEmpty()) q.add(s.pop());

        int size = q.size();

        for (int i = 0; i < size; i++){
            int x = q.remove();

            if (x < 0) {
                s.push(x);
            } else {
                q.add(x);
            }
        }

        while (!q.isEmpty()) {
            s.push(q.remove());
        }
    }
    private static Stack<Integer> makeStack(int[] arr) {
        Stack<Integer> s = new Stack<>();

        for (int x : arr) s.push(x);

        return s;
    }

    public static void main(String[] args) {
        int[] a1 = {5, -5, 67, -45, 67, 9, 0, -42, 56, -7};
        int[] a2 = {1, -2, -3, 4, -5, 6, -7, 8, 9};

        Stack<Integer> s1 = makeStack(a1);
        splitStack(s1);
        System.out.println("Result 1 (bottom..top): " + s1);

        Stack<Integer> s2 = makeStack(a2);
        splitStack(s2);
        System.out.println("Result 2 (bottom..top): " + s2);
    }
}