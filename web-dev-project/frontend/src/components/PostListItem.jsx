import { formatDistanceToNow } from "date-fns";
import * as React from "react";
import { useState } from "react";
import { BiLike } from "react-icons/bi";
import { Link } from "react-router-dom";
import Post from "../pages/Post";
import { capitalize } from "../utils/helpers";

const PostListItem = ({
  post: { id, title, text, date_posted, user, likes },
}) => {
  let date_posted_formatted = formatDistanceToNow(new Date(date_posted));
  date_posted_formatted = capitalize(date_posted_formatted);
  const [openComment, setOpenComment] = useState(false);

  return (
    <>
      <div onClick={() => setOpenComment((prev) => !prev)}>
        <div className="bg-white p-5 rounded-md hover:shadow-md">
          <span className="text-sm text-slate-500 mb-1">
            {date_posted_formatted} ago by{" "}
            <Link to={`/${user.enrollment_number}`} className="hover:underline">
              {user.first_name}
            </Link>
          </span>
          <h1 className="text-lg font-semibold mb-3">{title}</h1>
          <p className="mb-3">{text}</p>
          <div className="flex items-center gap-x-2">
            <span>
              <BiLike className="text-xl" />
            </span>
            {likes}
          </div>
        </div>
      </div>
      {openComment === true && <Post setOpen={setOpenComment} id={id} />}
    </>
  );
};

export default PostListItem;
