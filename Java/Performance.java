import java.util.*;

class Individual implements Comparable<Individual> {
    int id;

    Individual(int id) {
        this.id = id;
    }
    
    @Override
    public int compareTo(Individual o) {
        return id - o.id;
    }
}

class Performance {
    public static void main(final String[] args) {

        final AbstractSet<Individual> hashSet = new HashSet<Individual>();
        final AbstractSet<Individual> treeSet = new TreeSet<Individual>();
        final AbstractSet<Individual> linkedHashSet = new LinkedHashSet<Individual>();

        calculateAdd(hashSet);
        calculateAdd(treeSet);
        calculateAdd(linkedHashSet);

    }

    private static void calculateAdd(AbstractSet s) {
        final Random random = new Random();

        final long start = System.nanoTime();
        for (int i = 0; i < 1000; i++) {
            final int x = random.nextInt(1000 - 10) + 10;
            s.add(new Individual(x));
        }
        final long end = System.nanoTime();

        final long duration = end - start;
        System.out.println(s.getClass() + " duration :" + duration);
    }
}