require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test


  def setup
     @team = Team.new("CodeClan", ["Jim", "Allan", "Wendy"], "Manager Jones")
  end

  def test_get_team_name()
     assert_equal("CodeClan", @team.team_name())
  end

  # get player name
  # def test_get_players_name()
  #   assert_equal("Jim", @team.players())
  # end


  def test_get_coach_name()
    assert_equal("Manager Jones", @team.coach_name())
  end


  def test_add_new_player()
    @team.add_player("Boris")
    assert_equal(4, @team.players().size())
  end


  def test_change_coach_name()
    @team.coach_name = 'Manager Bob'
    assert_equal("Manager Bob", @team.coach_name())
  end


  #
end
