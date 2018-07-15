import javax.swing.*;

public class findEngine {

    static int counter=0;

    public static void findE(int[] source, int[] wanted)
    {
        int index = 0;
        for (int i = 0; i < source.length; i++) {
            if (source[i] == wanted[index]) {
                index++;
                if (index == wanted.length)
                {
                 counter++;
                 index=0;
                }

            }

        }

        JOptionPane.showMessageDialog(null,"Your list is founded in list "+counter+" times.");

    }


}
