import java.util.*;

class Leaderboard {
    private Map<String, Integer> scores;

    public Leaderboard() {
        scores = new HashMap<>();
    }

    // Add a player with a specified score
    public void addPlayer(String name, int score) {
        scores.put(name, score);
    }

    // Get the sorted leaderboard in descending order of scores
    public List<Map.Entry<String, Integer>> getSortedLeaderboard() {
        List<Map.Entry<String, Integer>> leaderboard = new ArrayList<>(scores.entrySet());
        leaderboard.sort((o1, o2) -> o2.getValue().compareTo(o1.getValue())); // Sort by score (descending)
        return leaderboard;
    }

    // Display the leaderboard in the Processing sketch
    public void display(float x, float y) {
        List<Map.Entry<String, Integer>> sortedLeaderboard = getSortedLeaderboard();
        fill(0); // Set text color to black
        textSize(24); // Set text size

        // Display the leaderboard
        for (int i = 0; i < sortedLeaderboard.size(); i++) {
            Map.Entry<String, Integer> entry = sortedLeaderboard.get(i);
            String displayText = "Player: " + entry.getKey() + ", Score: " + entry.getValue();
            fill(255);
            text(displayText, x, y + i * 30); // Display text at different y-positions
        }
    }
}
