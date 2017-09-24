class CommentBroadcastJob < ApplicationJob
	queue_as :default

	def perform(comment)
		ActionCable.server.CommentBroadcastJob "blogs_#{comment.blog.id}_channel",comment: render_comment(comment)
	end

	private
	def render_comment(comment)
		CommentController.render partial: 'comments/comment',locals: { commnet: comment}
	end

end